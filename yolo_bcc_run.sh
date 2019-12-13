#!/bin/bash

for p in $(seq 1 100); do \
  python yolo.py \
  --image images/bcc$(printf %.3d ${p}).jpg \
  --yolo yolo-coco -n -s;
done

cat << TESTYOLO > /tmp/testyolobcc.txt
[INFO] loading YOLO from disk...
[INFO] images/bcc001.jpg: YOLO took 1.570601 seconds
[INFO] images/bcc001.jpg: car: 0.9443
[INFO] images/bcc001.jpg: car: 0.5951
[INFO] saving detection image as output/yolo_bcc001.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc002.jpg: YOLO took 1.582384 seconds
[INFO] images/bcc002.jpg: car: 0.9419
[INFO] images/bcc002.jpg: car: 0.6014
[INFO] saving detection image as output/yolo_bcc002.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc003.jpg: YOLO took 1.624150 seconds
[INFO] images/bcc003.jpg: car: 0.9205
[INFO] saving detection image as output/yolo_bcc003.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc004.jpg: YOLO took 1.636249 seconds
[INFO] images/bcc004.jpg: car: 0.9298
[INFO] images/bcc004.jpg: car: 0.5240
[INFO] saving detection image as output/yolo_bcc004.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc005.jpg: YOLO took 1.583778 seconds
[INFO] images/bcc005.jpg: car: 0.9461
[INFO] images/bcc005.jpg: car: 0.5444
[INFO] saving detection image as output/yolo_bcc005.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc006.jpg: YOLO took 1.575297 seconds
[INFO] images/bcc006.jpg: car: 0.9274
[INFO] images/bcc006.jpg: car: 0.5333
[INFO] saving detection image as output/yolo_bcc006.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc007.jpg: YOLO took 1.585193 seconds
[INFO] images/bcc007.jpg: car: 0.9485
[INFO] saving detection image as output/yolo_bcc007.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc008.jpg: YOLO took 1.617584 seconds
[INFO] images/bcc008.jpg: car: 0.9379
[INFO] images/bcc008.jpg: car: 0.5711
[INFO] saving detection image as output/yolo_bcc008.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc009.jpg: YOLO took 1.612091 seconds
[INFO] images/bcc009.jpg: car: 0.9152
[INFO] images/bcc009.jpg: car: 0.5754
[INFO] saving detection image as output/yolo_bcc009.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc010.jpg: YOLO took 1.584647 seconds
[INFO] images/bcc010.jpg: car: 0.9143
[INFO] images/bcc010.jpg: car: 0.5688
[INFO] saving detection image as output/yolo_bcc010.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc011.jpg: YOLO took 1.593978 seconds
[INFO] images/bcc011.jpg: car: 0.9261
[INFO] images/bcc011.jpg: car: 0.5985
[INFO] images/bcc011.jpg: car: 0.5003
[INFO] saving detection image as output/yolo_bcc011.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc012.jpg: YOLO took 1.576083 seconds
[INFO] images/bcc012.jpg: car: 0.9434
[INFO] images/bcc012.jpg: car: 0.5706
[INFO] saving detection image as output/yolo_bcc012.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc013.jpg: YOLO took 1.619242 seconds
[INFO] images/bcc013.jpg: car: 0.9418
[INFO] images/bcc013.jpg: car: 0.7172
[INFO] saving detection image as output/yolo_bcc013.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc014.jpg: YOLO took 1.611881 seconds
[INFO] images/bcc014.jpg: car: 0.9421
[INFO] images/bcc014.jpg: car: 0.5595
[INFO] saving detection image as output/yolo_bcc014.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc015.jpg: YOLO took 1.596628 seconds
[INFO] images/bcc015.jpg: car: 0.9349
[INFO] images/bcc015.jpg: car: 0.5727
[INFO] saving detection image as output/yolo_bcc015.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc016.jpg: YOLO took 1.581983 seconds
[INFO] images/bcc016.jpg: car: 0.9566
[INFO] images/bcc016.jpg: car: 0.6364
[INFO] saving detection image as output/yolo_bcc016.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc017.jpg: YOLO took 1.573520 seconds
[INFO] images/bcc017.jpg: car: 0.9539
[INFO] images/bcc017.jpg: car: 0.5698
[INFO] saving detection image as output/yolo_bcc017.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc018.jpg: YOLO took 1.620072 seconds
[INFO] images/bcc018.jpg: car: 0.9258
[INFO] images/bcc018.jpg: car: 0.6427
[INFO] saving detection image as output/yolo_bcc018.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc019.jpg: YOLO took 1.627090 seconds
[INFO] images/bcc019.jpg: car: 0.9529
[INFO] images/bcc019.jpg: person: 0.9113
[INFO] images/bcc019.jpg: car: 0.6184
[INFO] saving detection image as output/yolo_bcc019.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc020.jpg: YOLO took 1.596813 seconds
[INFO] images/bcc020.jpg: car: 0.9441
[INFO] images/bcc020.jpg: person: 0.9117
[INFO] images/bcc020.jpg: umbrella: 0.8538
[INFO] images/bcc020.jpg: car: 0.5562
[INFO] images/bcc020.jpg: car: 0.5281
[INFO] saving detection image as output/yolo_bcc020.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc021.jpg: YOLO took 1.657244 seconds
[INFO] images/bcc021.jpg: car: 0.9400
[INFO] images/bcc021.jpg: umbrella: 0.9215
[INFO] images/bcc021.jpg: car: 0.5334
[INFO] images/bcc021.jpg: person: 0.5002
[INFO] saving detection image as output/yolo_bcc021.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc022.jpg: YOLO took 1.685774 seconds
[INFO] images/bcc022.jpg: umbrella: 0.9657
[INFO] images/bcc022.jpg: car: 0.9520
[INFO] images/bcc022.jpg: person: 0.9086
[INFO] images/bcc022.jpg: car: 0.6135
[INFO] images/bcc022.jpg: car: 0.5575
[INFO] saving detection image as output/yolo_bcc022.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc023.jpg: YOLO took 1.806748 seconds
[INFO] images/bcc023.jpg: car: 0.9686
[INFO] images/bcc023.jpg: umbrella: 0.9099
[INFO] images/bcc023.jpg: person: 0.8622
[INFO] images/bcc023.jpg: skateboard: 0.6043
[INFO] images/bcc023.jpg: car: 0.5931
[INFO] images/bcc023.jpg: car: 0.5200
[INFO] saving detection image as output/yolo_bcc023.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc024.jpg: YOLO took 1.643360 seconds
[INFO] images/bcc024.jpg: car: 0.9459
[INFO] images/bcc024.jpg: car: 0.5830
[INFO] saving detection image as output/yolo_bcc024.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc025.jpg: YOLO took 1.693388 seconds
[INFO] images/bcc025.jpg: car: 0.9419
[INFO] images/bcc025.jpg: person: 0.6989
[INFO] images/bcc025.jpg: car: 0.6065
[INFO] saving detection image as output/yolo_bcc025.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc026.jpg: YOLO took 1.618545 seconds
[INFO] images/bcc026.jpg: car: 0.9255
[INFO] images/bcc026.jpg: person: 0.6218
[INFO] images/bcc026.jpg: car: 0.5788
[INFO] saving detection image as output/yolo_bcc026.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc027.jpg: YOLO took 1.577750 seconds
[INFO] images/bcc027.jpg: car: 0.9462
[INFO] images/bcc027.jpg: car: 0.6382
[INFO] images/bcc027.jpg: car: 0.5112
[INFO] saving detection image as output/yolo_bcc027.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc028.jpg: YOLO took 1.628035 seconds
[INFO] images/bcc028.jpg: car: 0.9372
[INFO] saving detection image as output/yolo_bcc028.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc029.jpg: YOLO took 1.635349 seconds
[INFO] images/bcc029.jpg: car: 0.9353
[INFO] images/bcc029.jpg: car: 0.5417
[INFO] saving detection image as output/yolo_bcc029.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc030.jpg: YOLO took 1.616903 seconds
[INFO] images/bcc030.jpg: car: 0.9306
[INFO] images/bcc030.jpg: person: 0.8144
[INFO] images/bcc030.jpg: umbrella: 0.6667
[INFO] saving detection image as output/yolo_bcc030.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc031.jpg: YOLO took 1.580436 seconds
[INFO] images/bcc031.jpg: car: 0.9392
[INFO] images/bcc031.jpg: car: 0.5581
[INFO] saving detection image as output/yolo_bcc031.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc032.jpg: YOLO took 1.583855 seconds
[INFO] images/bcc032.jpg: car: 0.9631
[INFO] images/bcc032.jpg: person: 0.9386
[INFO] images/bcc032.jpg: umbrella: 0.8359
[INFO] images/bcc032.jpg: skateboard: 0.5895
[INFO] images/bcc032.jpg: car: 0.5719
[INFO] saving detection image as output/yolo_bcc032.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc033.jpg: YOLO took 1.589679 seconds
[INFO] images/bcc033.jpg: person: 0.9901
[INFO] images/bcc033.jpg: umbrella: 0.9612
[INFO] images/bcc033.jpg: car: 0.9207
[INFO] images/bcc033.jpg: car: 0.6738
[INFO] saving detection image as output/yolo_bcc033.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc034.jpg: YOLO took 1.581081 seconds
[INFO] images/bcc034.jpg: umbrella: 0.9899
[INFO] images/bcc034.jpg: person: 0.9835
[INFO] images/bcc034.jpg: car: 0.9453
[INFO] images/bcc034.jpg: car: 0.6074
[INFO] saving detection image as output/yolo_bcc034.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc035.jpg: YOLO took 1.620005 seconds
[INFO] images/bcc035.jpg: umbrella: 0.9910
[INFO] images/bcc035.jpg: person: 0.9645
[INFO] images/bcc035.jpg: car: 0.9332
[INFO] images/bcc035.jpg: car: 0.6022
[INFO] saving detection image as output/yolo_bcc035.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc036.jpg: YOLO took 1.607796 seconds
[INFO] images/bcc036.jpg: car: 0.9411
[INFO] images/bcc036.jpg: car: 0.6950
[INFO] saving detection image as output/yolo_bcc036.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc037.jpg: YOLO took 1.591904 seconds
[INFO] images/bcc037.jpg: car: 0.9051
[INFO] images/bcc037.jpg: car: 0.5171
[INFO] saving detection image as output/yolo_bcc037.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc038.jpg: YOLO took 1.577653 seconds
[INFO] images/bcc038.jpg: car: 0.9369
[INFO] saving detection image as output/yolo_bcc038.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc039.jpg: YOLO took 1.588085 seconds
[INFO] images/bcc039.jpg: car: 0.9458
[INFO] images/bcc039.jpg: car: 0.6014
[INFO] saving detection image as output/yolo_bcc039.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc040.jpg: YOLO took 1.623471 seconds
[INFO] images/bcc040.jpg: car: 0.9383
[INFO] images/bcc040.jpg: car: 0.5756
[INFO] saving detection image as output/yolo_bcc040.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc041.jpg: YOLO took 1.599277 seconds
[INFO] images/bcc041.jpg: car: 0.9423
[INFO] images/bcc041.jpg: car: 0.5729
[INFO] saving detection image as output/yolo_bcc041.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc042.jpg: YOLO took 1.594219 seconds
[INFO] images/bcc042.jpg: car: 0.9320
[INFO] images/bcc042.jpg: car: 0.5714
[INFO] saving detection image as output/yolo_bcc042.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc043.jpg: YOLO took 1.579470 seconds
[INFO] images/bcc043.jpg: car: 0.9332
[INFO] images/bcc043.jpg: car: 0.5494
[INFO] saving detection image as output/yolo_bcc043.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc044.jpg: YOLO took 1.595763 seconds
[INFO] images/bcc044.jpg: car: 0.9197
[INFO] images/bcc044.jpg: car: 0.5214
[INFO] saving detection image as output/yolo_bcc044.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc045.jpg: YOLO took 1.628848 seconds
[INFO] images/bcc045.jpg: car: 0.9308
[INFO] images/bcc045.jpg: car: 0.5931
[INFO] saving detection image as output/yolo_bcc045.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc046.jpg: YOLO took 1.630305 seconds
[INFO] images/bcc046.jpg: car: 0.9277
[INFO] images/bcc046.jpg: car: 0.5296
[INFO] saving detection image as output/yolo_bcc046.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc047.jpg: YOLO took 1.590742 seconds
[INFO] images/bcc047.jpg: car: 0.9256
[INFO] images/bcc047.jpg: car: 0.6344
[INFO] saving detection image as output/yolo_bcc047.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc048.jpg: YOLO took 1.568923 seconds
[INFO] images/bcc048.jpg: car: 0.9485
[INFO] images/bcc048.jpg: car: 0.6461
[INFO] saving detection image as output/yolo_bcc048.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc049.jpg: YOLO took 1.606659 seconds
[INFO] images/bcc049.jpg: car: 0.9220
[INFO] images/bcc049.jpg: car: 0.6038
[INFO] saving detection image as output/yolo_bcc049.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc050.jpg: YOLO took 1.619930 seconds
[INFO] images/bcc050.jpg: car: 0.9579
[INFO] images/bcc050.jpg: car: 0.5872
[INFO] saving detection image as output/yolo_bcc050.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc051.jpg: YOLO took 1.627242 seconds
[INFO] images/bcc051.jpg: car: 0.9144
[INFO] images/bcc051.jpg: car: 0.5037
[INFO] saving detection image as output/yolo_bcc051.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc052.jpg: YOLO took 1.635114 seconds
[INFO] images/bcc052.jpg: car: 0.9285
[INFO] images/bcc052.jpg: car: 0.5435
[INFO] saving detection image as output/yolo_bcc052.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc053.jpg: YOLO took 1.583650 seconds
[INFO] images/bcc053.jpg: car: 0.9497
[INFO] images/bcc053.jpg: car: 0.5645
[INFO] saving detection image as output/yolo_bcc053.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc054.jpg: YOLO took 1.596568 seconds
[INFO] images/bcc054.jpg: car: 0.9401
[INFO] images/bcc054.jpg: car: 0.6407
[INFO] saving detection image as output/yolo_bcc054.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc055.jpg: YOLO took 1.611949 seconds
[INFO] images/bcc055.jpg: car: 0.9379
[INFO] images/bcc055.jpg: car: 0.5912
[INFO] saving detection image as output/yolo_bcc055.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc056.jpg: YOLO took 1.615015 seconds
[INFO] images/bcc056.jpg: car: 0.9399
[INFO] images/bcc056.jpg: car: 0.5743
[INFO] saving detection image as output/yolo_bcc056.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc057.jpg: YOLO took 1.598010 seconds
[INFO] images/bcc057.jpg: car: 0.9461
[INFO] saving detection image as output/yolo_bcc057.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc058.jpg: YOLO took 1.588498 seconds
[INFO] images/bcc058.jpg: car: 0.9463
[INFO] images/bcc058.jpg: car: 0.6431
[INFO] saving detection image as output/yolo_bcc058.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc059.jpg: YOLO took 1.598207 seconds
[INFO] images/bcc059.jpg: car: 0.9442
[INFO] images/bcc059.jpg: car: 0.6273
[INFO] saving detection image as output/yolo_bcc059.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc060.jpg: YOLO took 1.626320 seconds
[INFO] images/bcc060.jpg: car: 0.9594
[INFO] images/bcc060.jpg: car: 0.5534
[INFO] saving detection image as output/yolo_bcc060.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc061.jpg: YOLO took 1.608842 seconds
[INFO] images/bcc061.jpg: car: 0.9467
[INFO] images/bcc061.jpg: car: 0.5986
[INFO] images/bcc061.jpg: car: 0.5032
[INFO] saving detection image as output/yolo_bcc061.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc062.jpg: YOLO took 1.606871 seconds
[INFO] images/bcc062.jpg: car: 0.9553
[INFO] images/bcc062.jpg: car: 0.5647
[INFO] images/bcc062.jpg: car: 0.5278
[INFO] saving detection image as output/yolo_bcc062.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc063.jpg: YOLO took 1.593568 seconds
[INFO] images/bcc063.jpg: car: 0.9384
[INFO] images/bcc063.jpg: car: 0.6093
[INFO] saving detection image as output/yolo_bcc063.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc064.jpg: YOLO took 1.598385 seconds
[INFO] images/bcc064.jpg: car: 0.9591
[INFO] images/bcc064.jpg: car: 0.6511
[INFO] saving detection image as output/yolo_bcc064.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc065.jpg: YOLO took 1.596045 seconds
[INFO] images/bcc065.jpg: car: 0.9326
[INFO] images/bcc065.jpg: car: 0.6140
[INFO] saving detection image as output/yolo_bcc065.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc066.jpg: YOLO took 1.623679 seconds
[INFO] images/bcc066.jpg: car: 0.9375
[INFO] images/bcc066.jpg: car: 0.5221
[INFO] saving detection image as output/yolo_bcc066.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc067.jpg: YOLO took 1.590490 seconds
[INFO] images/bcc067.jpg: car: 0.9291
[INFO] images/bcc067.jpg: car: 0.5119
[INFO] saving detection image as output/yolo_bcc067.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc068.jpg: YOLO took 1.579372 seconds
[INFO] images/bcc068.jpg: car: 0.9636
[INFO] images/bcc068.jpg: car: 0.7048
[INFO] images/bcc068.jpg: car: 0.5534
[INFO] saving detection image as output/yolo_bcc068.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc069.jpg: YOLO took 1.584821 seconds
[INFO] images/bcc069.jpg: car: 0.9436
[INFO] images/bcc069.jpg: car: 0.5140
[INFO] saving detection image as output/yolo_bcc069.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc070.jpg: YOLO took 1.589823 seconds
[INFO] images/bcc070.jpg: car: 0.9548
[INFO] images/bcc070.jpg: car: 0.7271
[INFO] images/bcc070.jpg: car: 0.5898
[INFO] saving detection image as output/yolo_bcc070.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc071.jpg: YOLO took 1.616493 seconds
[INFO] images/bcc071.jpg: car: 0.9501
[INFO] images/bcc071.jpg: car: 0.5779
[INFO] saving detection image as output/yolo_bcc071.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc072.jpg: YOLO took 1.584424 seconds
[INFO] images/bcc072.jpg: car: 0.9563
[INFO] images/bcc072.jpg: car: 0.5853
[INFO] saving detection image as output/yolo_bcc072.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc073.jpg: YOLO took 1.639811 seconds
[INFO] images/bcc073.jpg: car: 0.9321
[INFO] images/bcc073.jpg: car: 0.5504
[INFO] saving detection image as output/yolo_bcc073.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc074.jpg: YOLO took 1.595932 seconds
[INFO] images/bcc074.jpg: car: 0.9498
[INFO] images/bcc074.jpg: car: 0.5188
[INFO] saving detection image as output/yolo_bcc074.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc075.jpg: YOLO took 1.584640 seconds
[INFO] images/bcc075.jpg: car: 0.9475
[INFO] images/bcc075.jpg: car: 0.5268
[INFO] saving detection image as output/yolo_bcc075.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc076.jpg: YOLO took 1.617855 seconds
[INFO] images/bcc076.jpg: car: 0.9391
[INFO] images/bcc076.jpg: car: 0.5749
[INFO] images/bcc076.jpg: car: 0.5646
[INFO] saving detection image as output/yolo_bcc076.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc077.jpg: YOLO took 1.630764 seconds
[INFO] images/bcc077.jpg: car: 0.9285
[INFO] images/bcc077.jpg: car: 0.5235
[INFO] images/bcc077.jpg: car: 0.5114
[INFO] saving detection image as output/yolo_bcc077.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc078.jpg: YOLO took 1.997920 seconds
[INFO] images/bcc078.jpg: car: 0.9444
[INFO] images/bcc078.jpg: car: 0.6147
[INFO] saving detection image as output/yolo_bcc078.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc079.jpg: YOLO took 1.720297 seconds
[INFO] images/bcc079.jpg: car: 0.9503
[INFO] images/bcc079.jpg: car: 0.6561
[INFO] saving detection image as output/yolo_bcc079.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc080.jpg: YOLO took 1.658419 seconds
[INFO] images/bcc080.jpg: car: 0.9487
[INFO] images/bcc080.jpg: car: 0.5610
[INFO] images/bcc080.jpg: car: 0.5204
[INFO] saving detection image as output/yolo_bcc080.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc081.jpg: YOLO took 1.633105 seconds
[INFO] images/bcc081.jpg: car: 0.9460
[INFO] images/bcc081.jpg: car: 0.6191
[INFO] saving detection image as output/yolo_bcc081.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc082.jpg: YOLO took 1.645004 seconds
[INFO] images/bcc082.jpg: car: 0.9605
[INFO] images/bcc082.jpg: car: 0.6354
[INFO] saving detection image as output/yolo_bcc082.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc083.jpg: YOLO took 1.628692 seconds
[INFO] images/bcc083.jpg: car: 0.9395
[INFO] images/bcc083.jpg: car: 0.6074
[INFO] images/bcc083.jpg: car: 0.5114
[INFO] saving detection image as output/yolo_bcc083.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc084.jpg: YOLO took 1.665762 seconds
[INFO] images/bcc084.jpg: car: 0.9640
[INFO] images/bcc084.jpg: car: 0.5899
[INFO] images/bcc084.jpg: car: 0.5797
[INFO] saving detection image as output/yolo_bcc084.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc085.jpg: YOLO took 1.585454 seconds
[INFO] images/bcc085.jpg: car: 0.9481
[INFO] images/bcc085.jpg: car: 0.5527
[INFO] saving detection image as output/yolo_bcc085.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc086.jpg: YOLO took 1.601218 seconds
[INFO] images/bcc086.jpg: car: 0.9464
[INFO] images/bcc086.jpg: car: 0.5396
[INFO] saving detection image as output/yolo_bcc086.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc087.jpg: YOLO took 1.649180 seconds
[INFO] images/bcc087.jpg: car: 0.9518
[INFO] images/bcc087.jpg: car: 0.5899
[INFO] images/bcc087.jpg: car: 0.5445
[INFO] saving detection image as output/yolo_bcc087.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc088.jpg: YOLO took 1.626807 seconds
[INFO] images/bcc088.jpg: car: 0.9263
[INFO] images/bcc088.jpg: car: 0.5377
[INFO] saving detection image as output/yolo_bcc088.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc089.jpg: YOLO took 1.616900 seconds
[INFO] images/bcc089.jpg: car: 0.9445
[INFO] images/bcc089.jpg: car: 0.5963
[INFO] images/bcc089.jpg: car: 0.5523
[INFO] saving detection image as output/yolo_bcc089.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc090.jpg: YOLO took 1.631569 seconds
[INFO] images/bcc090.jpg: car: 0.9560
[INFO] images/bcc090.jpg: car: 0.6246
[INFO] saving detection image as output/yolo_bcc090.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc091.jpg: YOLO took 1.597975 seconds
[INFO] images/bcc091.jpg: car: 0.9555
[INFO] images/bcc091.jpg: car: 0.5687
[INFO] images/bcc091.jpg: car: 0.5102
[INFO] saving detection image as output/yolo_bcc091.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc092.jpg: YOLO took 1.602675 seconds
[INFO] images/bcc092.jpg: car: 0.9655
[INFO] images/bcc092.jpg: car: 0.6349
[INFO] saving detection image as output/yolo_bcc092.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc093.jpg: YOLO took 1.647462 seconds
[INFO] images/bcc093.jpg: car: 0.9673
[INFO] images/bcc093.jpg: car: 0.5283
[INFO] saving detection image as output/yolo_bcc093.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc094.jpg: YOLO took 1.614333 seconds
[INFO] images/bcc094.jpg: car: 0.9626
[INFO] images/bcc094.jpg: car: 0.6415
[INFO] saving detection image as output/yolo_bcc094.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc095.jpg: YOLO took 1.574681 seconds
[INFO] images/bcc095.jpg: car: 0.9673
[INFO] images/bcc095.jpg: car: 0.5528
[INFO] saving detection image as output/yolo_bcc095.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc096.jpg: YOLO took 1.704787 seconds
[INFO] images/bcc096.jpg: car: 0.9736
[INFO] images/bcc096.jpg: car: 0.6632
[INFO] images/bcc096.jpg: car: 0.5486
[INFO] saving detection image as output/yolo_bcc096.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc097.jpg: YOLO took 1.755224 seconds
[INFO] images/bcc097.jpg: car: 0.9573
[INFO] images/bcc097.jpg: car: 0.5595
[INFO] saving detection image as output/yolo_bcc097.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc098.jpg: YOLO took 1.612483 seconds
[INFO] images/bcc098.jpg: car: 0.9534
[INFO] images/bcc098.jpg: car: 0.5269
[INFO] saving detection image as output/yolo_bcc098.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc099.jpg: YOLO took 1.643317 seconds
[INFO] images/bcc099.jpg: car: 0.9448
[INFO] images/bcc099.jpg: car: 0.5970
[INFO] images/bcc099.jpg: car: 0.5537
[INFO] saving detection image as output/yolo_bcc099.jpg
[INFO] loading YOLO from disk...
[INFO] images/bcc100.jpg: YOLO took 1.622042 seconds
[INFO] images/bcc100.jpg: car: 0.9522
[INFO] images/bcc100.jpg: car: 0.6297
[INFO] images/bcc100.jpg: car: 0.5426
[INFO] saving detection image as output/yolo_bcc100.jpg
TESTYOLO
