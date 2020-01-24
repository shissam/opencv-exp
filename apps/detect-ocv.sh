#!/bin/bash

QUIESCENCE=15
ACTIVE=1

#
# period (in seconds) to include before an active event
#
#ACTIVELEAD=60
ACTIVELEAD=30
#
# period (in seconds) *between* image snapshots
#
SNAPSHOTPERIOD=3
SNAPWINDOW=$((${ACTIVELEAD}/${SNAPSHOTPERIOD}))

TEMP=/tmp/stream
DB=/home/shissam/src/detect-ocv/db
MOV=/home/shissam/src/detect-ocv/mov
DET=/home/shissam/Downloads/yolo-object-detection

if [ ! -d ${TEMP} ]; then
  mkdir -p ${TEMP}
fi

if [ ! -d ${DB} ]; then
  mkdir -p ${DB}
fi

rm -f ${TEMP}/stop.detect

cat <<FETCHER_CONF > ${TEMP}/fetchraspi.conf
SNAPSHOTPERIOD=${SNAPSHOTPERIOD}
DB=${DB}
MOV=${MOV}
FETCHER_CONF

cat <<'FETCHER_EOF' > ${TEMP}/fetchraspi.sh
#!/bin/bash

TEMP=/tmp/stream
source ${TEMP}/fetchraspi.conf

cd ${DB}
while [ ! -f ${TEMP}/stop.detect ]
do
  _serial=$(date +%s)
  curl http://piscam01.:8080/\?action=snapshot --silent -o /tmp/pic_${_serial}.jpg
  if [ ${?} -eq 0 ]; then
    mv /tmp/pic_${_serial}.jpg ${DB}/
  else
    rm -f /tmp/pic_${_serial}.jpg
  fi
  sleep ${SNAPSHOTPERIOD}
  source ${TEMP}/fetchraspi.conf
done
exit 0
FETCHER_EOF

getImage()
{
  if [ ! -f ${TEMP}/fetchraspi.last ]; then  # {
    _p=$(ls -tr1 ${DB} | head -1)
  else  # } {
    _p=$(basename $(find ${DB} \
         -type f \
         -name pic\*.jpg \
         -newer ${TEMP}/fetchraspi.last | head -1))
    if [ "${?}" = "1" ]; then
       echo 0
       return
    fi
  fi  # }

  touch --reference ${DB}/${_p} ${TEMP}/fetchraspi.last 2>&1 >/dev/null
  _serial=$(echo ${_p} | egrep --only-matching "([[:digit:]]*)")

  if [ "${_serial}" = "" ]; then
    echo "ASSERT FAIL: serial is empty; _p = \"${_p}\"; $(ls --full-time /tmp/stream/fetchraspi.last|cut -c31-)" 2>&1 >>${TEMP}/fetchraspi.err
    echo 0
    return
  fi
  echo ${_serial}
  return
}

detectObject()
{
  RET=1
  pushd ${DET}
  convert ${DB}/pic_${1}.jpg -crop  800x395+0+205 cropped.jpg
  python yolo.py --image cropped.jpg --yolo yolo-coco -n -s "."
  if [ ${?} -gt 0 -a ${?} -lt 255 ]; then
    echo saw something
    mv y_cropped.jpg ${DB}/../output/cropped_${1}.jpg
    RET=0
  fi
  rm cropped.jpg
  popd
  return ${RET}
}

makeMovie()
{
  outMovie=${MOV}/mov_${1}.mp4
  pushd ${DB}
  echo Making movie using $(echo $(ls *jpg))
  echo -n $(date --date=@${1} +"%F %H:%M:%S") > ${TEMP}/date.txt
  ls -1 *jpg | \
    xargs cat | \
    ffmpeg -y -f image2pipe -r 15 -vcodec mjpeg -i - -vcodec libx264 \
      -vf "drawtext=fontfile=/usr/share/fonts/truetype/freefont/FreeSans.ttf: textfile=${TEMP}/date.txt: x=2: y=(2*lh): fontcolor=white: box=1: boxcolor=0x00000000@1" \
      ${outMovie}
  popd
}

cleanup()
{
  if [ "${1}" = "${ACTIVE}" ]; then
    return 0
  fi

  echo removing all but last ${3} files from ${2}
  find ${DB} -type f -a \
    \! -newer ${DB}/pic_${2}.jpg -a \
    \! -samefile ${DB}/pic_${2}.jpg \
    | sort > /tmp/x
  tail -${3} /tmp/x  > /tmp/y
  diff --left-column /tmp/x /tmp/y | cut -c 3- | tail -n +2 | xargs rm
}

#
# main
#

chmod 755 ${TEMP}/fetchraspi.sh
${TEMP}/fetchraspi.sh &

sleep ${SNAPSHOTPERIOD}

rm -f ${TEMP}/fetchraspi.last

_lastperiod=${QUIESCENCE}
_period=${QUIESCENCE}

while [ ! -f ${TEMP}/stop.detect ]
do # {
  _serial=$(getImage)
  case "${_serial}" in

  "0")
    echo "failed to get a serial number" 
    sleep 1
  ;;

  *)
    detectObject ${_serial}
    if [ "${?}" = "0" ]; then # {

      _period=${ACTIVE}

    else # } {

      if [ "${_period}" = "${ACTIVE}" ]; then
        makeMovie ${_serial}
      fi
      _period=${QUIESCENCE}

    fi # }

    cleanup ${_period} ${_serial} ${SNAPWINDOW}
  ;;

  esac

#  sleep ${_period}

done # }

exit 0
