#!/bin/bash

for p in $(seq 1 33); do \
  python yolo.py \
  --image images/game$(printf %.2d ${p}).jpg \
  --yolo yolo-coco -n -s;
done

cat << TESTYOLO > /tmp/testyologame.txt
[INFO] loading YOLO from disk...
[INFO] images/game01.jpg: YOLO took 1.561947 seconds
[INFO] images/game01.jpg: person: 0.9992
[INFO] images/game01.jpg: person: 0.9946
[INFO] saving detection image as output/yolo_game01.jpg
[INFO] loading YOLO from disk...
[INFO] images/game02.jpg: YOLO took 1.584415 seconds
[INFO] images/game02.jpg: person: 0.9987
[INFO] saving detection image as output/yolo_game02.jpg
[INFO] loading YOLO from disk...
[INFO] images/game03.jpg: YOLO took 1.638289 seconds
[INFO] images/game03.jpg: person: 0.9921
[INFO] images/game03.jpg: person: 0.9918
[INFO] saving detection image as output/yolo_game03.jpg
[INFO] loading YOLO from disk...
[INFO] images/game04.jpg: YOLO took 1.603281 seconds
[INFO] images/game04.jpg: person: 0.9966
[INFO] images/game04.jpg: backpack: 0.7760
[INFO] saving detection image as output/yolo_game04.jpg
[INFO] loading YOLO from disk...
[INFO] images/game05.jpg: YOLO took 1.756608 seconds
[INFO] images/game05.jpg: person: 0.9995
[INFO] images/game05.jpg: person: 0.9940
[INFO] images/game05.jpg: dog: 0.9376
[INFO] saving detection image as output/yolo_game05.jpg
[INFO] loading YOLO from disk...
[INFO] images/game06.jpg: YOLO took 1.612988 seconds
[INFO] images/game06.jpg: person: 0.9904
[INFO] saving detection image as output/yolo_game06.jpg
[INFO] loading YOLO from disk...
[INFO] images/game07.jpg: YOLO took 1.728108 seconds
[INFO] images/game07.jpg: person: 0.5305
[INFO] saving detection image as output/yolo_game07.jpg
[INFO] loading YOLO from disk...
[INFO] images/game08.jpg: YOLO took 1.594808 seconds
[INFO] saving detection image as output/yolo_game08.jpg
[INFO] loading YOLO from disk...
[INFO] images/game09.jpg: YOLO took 1.585438 seconds
[INFO] saving detection image as output/yolo_game09.jpg
[INFO] loading YOLO from disk...
[INFO] images/game10.jpg: YOLO took 1.612827 seconds
[INFO] images/game10.jpg: person: 0.9994
[INFO] saving detection image as output/yolo_game10.jpg
[INFO] loading YOLO from disk...
[INFO] images/game11.jpg: YOLO took 1.628347 seconds
[INFO] images/game11.jpg: person: 0.9908
[INFO] saving detection image as output/yolo_game11.jpg
[INFO] loading YOLO from disk...
[INFO] images/game12.jpg: YOLO took 1.618756 seconds
[INFO] images/game12.jpg: person: 0.9346
[INFO] images/game12.jpg: person: 0.8550
[INFO] saving detection image as output/yolo_game12.jpg
[INFO] loading YOLO from disk...
[INFO] images/game13.jpg: YOLO took 1.617018 seconds
[INFO] images/game13.jpg: person: 0.7329
[INFO] saving detection image as output/yolo_game13.jpg
[INFO] loading YOLO from disk...
[INFO] images/game14.jpg: YOLO took 1.586687 seconds
[INFO] images/game14.jpg: person: 0.8466
[INFO] saving detection image as output/yolo_game14.jpg
[INFO] loading YOLO from disk...
[INFO] images/game15.jpg: YOLO took 1.846469 seconds
[INFO] images/game15.jpg: person: 0.9972
[INFO] saving detection image as output/yolo_game15.jpg
[INFO] loading YOLO from disk...
[INFO] images/game16.jpg: YOLO took 1.671163 seconds
[INFO] images/game16.jpg: person: 0.9983
[INFO] saving detection image as output/yolo_game16.jpg
[INFO] loading YOLO from disk...
[INFO] images/game17.jpg: YOLO took 1.610851 seconds
[INFO] images/game17.jpg: person: 0.9057
[INFO] saving detection image as output/yolo_game17.jpg
[INFO] loading YOLO from disk...
[INFO] images/game18.jpg: YOLO took 1.770622 seconds
[INFO] images/game18.jpg: person: 0.7802
[INFO] saving detection image as output/yolo_game18.jpg
[INFO] loading YOLO from disk...
[INFO] images/game19.jpg: YOLO took 1.613744 seconds
[INFO] saving detection image as output/yolo_game19.jpg
[INFO] loading YOLO from disk...
[INFO] images/game20.jpg: YOLO took 1.639528 seconds
[INFO] images/game20.jpg: person: 0.7992
[INFO] saving detection image as output/yolo_game20.jpg
[INFO] loading YOLO from disk...
[INFO] images/game21.jpg: YOLO took 1.604006 seconds
[INFO] images/game21.jpg: person: 0.9971
[INFO] images/game21.jpg: person: 0.9940
[INFO] saving detection image as output/yolo_game21.jpg
[INFO] loading YOLO from disk...
[INFO] images/game22.jpg: YOLO took 1.605255 seconds
[INFO] images/game22.jpg: person: 0.9997
[INFO] images/game22.jpg: person: 0.9991
[INFO] images/game22.jpg: person: 0.9972
[INFO] images/game22.jpg: person: 0.9873
[INFO] saving detection image as output/yolo_game22.jpg
[INFO] loading YOLO from disk...
[INFO] images/game23.jpg: YOLO took 1.631254 seconds
[INFO] images/game23.jpg: person: 0.9963
[INFO] images/game23.jpg: person: 0.9853
[INFO] images/game23.jpg: person: 0.9777
[INFO] images/game23.jpg: person: 0.9761
[INFO] images/game23.jpg: person: 0.9735
[INFO] images/game23.jpg: person: 0.9464
[INFO] images/game23.jpg: person: 0.9286
[INFO] images/game23.jpg: car: 0.8829
[INFO] images/game23.jpg: person: 0.8301
[INFO] images/game23.jpg: car: 0.8029
[INFO] saving detection image as output/yolo_game23.jpg
[INFO] loading YOLO from disk...
[INFO] images/game24.jpg: YOLO took 1.620748 seconds
[INFO] images/game24.jpg: person: 0.9960
[INFO] images/game24.jpg: person: 0.5114
[INFO] saving detection image as output/yolo_game24.jpg
[INFO] loading YOLO from disk...
[INFO] images/game25.jpg: YOLO took 1.605539 seconds
[INFO] images/game25.jpg: person: 0.9973
[INFO] images/game25.jpg: person: 0.9590
[INFO] images/game25.jpg: person: 0.9068
[INFO] saving detection image as output/yolo_game25.jpg
[INFO] loading YOLO from disk...
[INFO] images/game26.jpg: YOLO took 1.703333 seconds
[INFO] saving detection image as output/yolo_game26.jpg
[INFO] loading YOLO from disk...
[INFO] images/game27.jpg: YOLO took 1.587098 seconds
[INFO] images/game27.jpg: person: 0.9944
[INFO] images/game27.jpg: dog: 0.6445
[INFO] saving detection image as output/yolo_game27.jpg
[INFO] loading YOLO from disk...
[INFO] images/game28.jpg: YOLO took 1.582530 seconds
[INFO] images/game28.jpg: person: 0.9915
[INFO] images/game28.jpg: person: 0.6773
[INFO] images/game28.jpg: car: 0.5405
[INFO] saving detection image as output/yolo_game28.jpg
[INFO] loading YOLO from disk...
[INFO] images/game29.jpg: YOLO took 1.624067 seconds
[INFO] images/game29.jpg: person: 0.9895
[INFO] images/game29.jpg: person: 0.6728
[INFO] saving detection image as output/yolo_game29.jpg
[INFO] loading YOLO from disk...
[INFO] images/game30.jpg: YOLO took 1.601382 seconds
[INFO] images/game30.jpg: tvmonitor: 0.7217
[INFO] saving detection image as output/yolo_game30.jpg
[INFO] loading YOLO from disk...
[INFO] images/game31.jpg: YOLO took 1.586150 seconds
[INFO] images/game31.jpg: bed: 0.9966
[INFO] saving detection image as output/yolo_game31.jpg
[INFO] loading YOLO from disk...
[INFO] images/game32.jpg: YOLO took 1.576196 seconds
[INFO] images/game32.jpg: person: 0.9721
[INFO] images/game32.jpg: person: 0.9637
[INFO] images/game32.jpg: person: 0.9013
[INFO] images/game32.jpg: person: 0.8678
[INFO] images/game32.jpg: person: 0.8674
[INFO] images/game32.jpg: person: 0.7822
[INFO] images/game32.jpg: person: 0.5985
[INFO] images/game32.jpg: chair: 0.5126
[INFO] images/game32.jpg: person: 0.5069
[INFO] saving detection image as output/yolo_game32.jpg
[INFO] loading YOLO from disk...
[INFO] images/game33.jpg: YOLO took 1.596180 seconds
[INFO] images/game33.jpg: person: 0.9933
[INFO] images/game33.jpg: person: 0.7195
[INFO] saving detection image as output/yolo_game33.jpg
TESTYOLO
