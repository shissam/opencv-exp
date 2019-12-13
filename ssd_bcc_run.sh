#!/bin/bash

for p in $(seq 1 100)
do
  python deep_learning_object_detection.py \
    --prototxt MobileNetSSD_deploy.prototxt.txt \
    --model MobileNetSSD_deploy.caffemodel \
    --image ../yolo-object-detection/images/bcc$(printf %.3d ${p}).jpg \
    -n -s ;
done

cat << TESTSSD > /tmp/testssdbcc.txt
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc001.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc002.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc003.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc004.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc005.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc006.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc007.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc008.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc009.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc010.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc011.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc012.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc013.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc014.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc015.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc016.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc017.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc018.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc019.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc020.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc021.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc022.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc023.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc024.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc025.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc026.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc027.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc028.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc029.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc030.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc031.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc032.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc033.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc034.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc035.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc036.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc037.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc038.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc039.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc040.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc041.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc042.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc043.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc044.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc045.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc046.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc047.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc048.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc049.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc050.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc051.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc052.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc053.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc054.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc055.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc056.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc057.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc058.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc059.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc060.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc061.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc062.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc063.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc064.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc065.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc066.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc067.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc068.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc069.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc070.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc071.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc072.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc073.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc074.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc075.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc076.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc077.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc078.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc079.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc080.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc081.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc082.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc083.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc084.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc085.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc086.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc087.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc088.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc089.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc090.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc091.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc092.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc093.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc094.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc095.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc096.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc097.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc098.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc099.jpg
[INFO] loading model...
[INFO] computing object detections...
[INFO] saving detection image as ../yolo-object-detection/output/ssd_bcc100.jpg
TESTSSD
