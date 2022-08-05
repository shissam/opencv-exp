# References

The following instructions were heavily influenced by the instructions from [PyImageSearch](https://www.pyimagesearch.com/). Most specifically:

* [YOLO object detection with OpenCV](https://www.pyimagesearch.com/2018/11/12/yolo-object-detection-with-opencv/)
* [How to install OpenCV 4 on Ubuntu](https://www.pyimagesearch.com/2018/08/15/how-to-install-opencv-4-on-ubuntu/) Specifically with Python3 and OpenCV 4.0.0
* [Object detection with deep learning and OpenCV](https://www.pyimagesearch.com/2017/09/11/object-detection-with-deep-learning-and-opencv/) For comparison with OpenCV and the SSD Algorithm.

# Installation

These instuctions assume a clean, up to date, Ubuntu 18.04.3 LTS installation. Furthermore, the baseline instructions from [PyImageSearch](https://www.pyimagesearch.com/) were written assuming use of Python3 and the (then) newly released OpenCV 4.0.0, as such that is the baseline that will be used here.

Following from [How to install OpenCV 4 on Ubuntu](https://www.pyimagesearch.com/2018/08/15/how-to-install-opencv-4-on-ubuntu/), let's dive in.

## Diskspace

As stated above w.r.t. the assumption, following these instructions required approximately 11.6GB of space before experiments.
## Baseline Ubuntu/Linux package installations via ```apt-get```

```
cd ~
sudo apt-get install build-essential cmake unzip pkg-config
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libgtk-3-dev
sudo apt-get install libatlas-base-dev gfortran
sudo apt-get install python3-dev
sudo apt-get install python3-testresources
wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo pip install virtualenv virtualenvwrapper
sudo rm -rf ~/get-pip.py ~/.cache/pip
```

update ```.bashrc```

```
echo -e "\n# virtualenv and virtualenvwrapper" >> ~/.bashrc
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
echo "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
source ~/.bashrc
```

## Download and unpack OpenCV 4.0.0 packages

```
cd ~
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.0.0.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.0.0.zip
mv opencv.zip openvc.4.0.0.zip
mv opencv_contrib.zip opencv_contrib.4.0.0.zip
unzip openvc.4.0.0.zip
unzip opencv_contrib.4.0.0.zip
#
# we're using symlinks here and not "mv'ing" as we may want to
# 'git' the latest opencv later. Want to keep 4.0.0 separate from 
# latest opencv (later). As stated in the references above, the
# path to opencv and opencv_contrib is in the ```cmake``` below
#
ln -s opencv-4.0.0 opencv
ln -s opencv_contrib-4.0.0 opencv_contrib
```

## Setup Environment and Makefile

First the python virtual environment, here we're going to be
specific about OpenCV 4.0.0

```
mkvirtualenv cv400 -p python3
```

Now it should appear that you are in the activate virtualenv for cv400 and should see something like the following:

```
(cv400) hissam@pcabgt:~$ 
```

You can get "out" of that environment by deactivating:

```
(cv400) hissam@pcabgt:~$ deactivate
hissam@pcabgt:~$ 
```

Now with that quick primer on virtualenvs, activate the virtualenv, ```cv400```, just created

```
workon cv400
```

Install NumPy

```
pip install numpy
```

Now to make the make file with ```cmake``` (takes about 2 minutes)

```
cd ~/opencv
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_PYTHON_EXAMPLES=ON \
	-D INSTALL_C_EXAMPLES=OFF \
	-D OPENCV_ENABLE_NONFREE=ON \
	-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules \
	-D PYTHON_EXECUTABLE=~/.virtualenvs/cv/bin/python \
	-D BUILD_EXAMPLES=ON ..
```

Noticed this, but does not appear to be a problem as regression tests passed.
```
Could NOT find PythonInterp: Found unsuitable version "1.4", but required is at least "2.7" (found /home/hissam/.virtualenvs/cv/bin/python)
```

## Build OpenCV and Install (takes about 40 minutes)

```
make -j4
sudo make install
sudo ldconfig
```

and integrate the latest OpenCV build into the virtual environment

```
python --version
ls /usr/local/python/cv2/python-3.6
cd ~/.virtualenvs/cv400/lib/python3.6/site-packages/
ln -s /usr/local/python/cv2/python-3.6/cv2.cpython-36m-x86_64-linux-gnu.so cv2.so
cd ~
python
import cv2
cv2.__version__
quit()
```

# Get To Work

## YOLO Experiments

Inspired from [YOLO object detection with OpenCV](https://www.pyimagesearch.com/2018/11/12/yolo-object-detection-with-opencv/)

### Pull/copy/whatever All the test images and models and unpack

```
cd ~/Downloads
cp <<SRC>>/*.zip .
unzip yolo-object-detection.zip
cd yolo-object-detection/images/
unzip ../../objDetect.zip
unzip ../../bccpics.zip
unzip ../../arlopics.zip
cd ../..
```

### Run a quick test

Remember... virtualenv! 

```
workon cv400 #if not already in 'cv400'
cd ~/Downloads/yolo-object-detection/
python yolo.py --image images/baggage_claim.jpg --yolo yolo-coco
```

You should have your first successful object detection result displayed.

The ```yolo.py``` program was modified to add additional command line args to run in batch mode while providing textual output as to the object detected and the confidence score. Replace that version of ```yolo.py``` with the modified one and re-run the same example with the args '-n' (non-interactve) and '-s' to save resulting image.

```
mv yolo.py yolo_orig.py
cp <<SRC>>/yolo.py .
python yolo.py --image images/baggage_claim.jpg --yolo yolo-coco -n -s output
```

### Predefined Scripts for Yolo

```
workon cv400
cd ~/Downloads/yolo-object-detection
cp <<SRC>>/yolo_game_run.sh .
bash ./yolo_game_run.sh | tee yolo-game-run.txt  # takes about 1 min.
```

compare your results with those from the baseline set (a regression test)

```
ls -l yolo-game-run.txt /tmp/testyologame.txt
diff yolo-game-run.txt /tmp/testyologame.txt   # shows time differences
#
# ignores time difference
#
diff yolo-game-run.txt /tmp/testyologame.txt \
  | egrep -v \
    "(took\ [[:digit:]]\.[[:digit:]].*\ seconds|---|^[[:digit:]][[:digit:]]*c)"
```

* times should be different (expected)
* confidence should not be different (expected)
* number of objects detected should not be different (expected)

Look at the output:

```
head -19 yolo-game-run.txt
[INFO] loading YOLO from disk...
[INFO] images/game01.jpg: YOLO took 1.606051 seconds
[INFO] images/game01.jpg: person: 0.9992
[INFO] images/game01.jpg: person: 0.9946
[INFO] saving detection image as output/yolo_game01.jpg
[INFO] loading YOLO from disk...
[INFO] images/game02.jpg: YOLO took 1.592636 seconds
[INFO] images/game02.jpg: person: 0.9987
[INFO] saving detection image as output/yolo_game02.jpg
[INFO] loading YOLO from disk...
[INFO] images/game03.jpg: YOLO took 1.584641 seconds
[INFO] images/game03.jpg: person: 0.9921
[INFO] images/game03.jpg: person: 0.9918
[INFO] saving detection image as output/yolo_game03.jpg
[INFO] loading YOLO from disk...
[INFO] images/game04.jpg: YOLO took 1.595009 seconds
[INFO] images/game04.jpg: person: 0.9966
[INFO] images/game04.jpg: backpack: 0.7760
[INFO] saving detection image as output/yolo_game04.jpg
```

for ```game01.jpg``` 2 persons (with high confidence) were detected in the image

for ```game02.jpg``` 1 person (with high confidence) was detected

for ```game03.jpg``` 2 persons were detected

for ```game04.jpg``` 1 person and one backpack were detected

for each image, the output marked-up image from the detection is saved for verification.

(you get the drift...)

Another experiment set:

```
cp <<SRC>>/yolo_bcc_run.sh
bash ./yolo_bcc_run.sh | tee yolo-bcc-run.txt  # takes about 3 min.
```

compare your results with those from the baseline set (a regression test)

```
ls -l yolo-bcc-run.txt /tmp/testyolobcc.txt
diff yolo-bcc-run.txt /tmp/testyolobcc.txt   # shows time differences
#
# ignores time difference
#
diff yolo-bcc-run.txt /tmp/testyolobcc.txt \
  | egrep -v \
    "(took\ [[:digit:]]\.[[:digit:]].*\ seconds|---|^[[:digit:]][[:digit:]]*c)"
```

Like before:
* times should be different (expected)
* confidence should not be different (expected)
* number of objects detected should not be different (expected)


## SSD Experiments

Inspired from [Object detection with deep learning and OpenCV](https://www.pyimagesearch.com/2017/09/11/object-detection-with-deep-learning-and-opencv/) For comparison with OpenCV and the SSD Algorithm.

### Unpack the SSD Detection tools (copied earlier with the YOLO unpacking)

```
cd ~/Downloads
unzip object-detection-deep-learning.zip
```

### Run a quick test

Remember... virtualenv! 

```
workon cv400 #if not already in 'cv400'
cd ~/Downloads/object-detection-deep-learning/
python deep_learning_object_detection.py \
    --prototxt MobileNetSSD_deploy.prototxt.txt \
    --model MobileNetSSD_deploy.caffemodel \
    --image images/example_01.jpg 
```

You should have your first successful object detection result displayed.

Like before, the ```deep_learning_object_detection.py``` program was modified to add additional command line args to run in batch mode while providing textual output as to the object detected and the confidence score. Replace that version of ```deep_learning_object_detection.py``` with the modified one and re-run the same example with the args '-n' (non-interactve) and '-s' to save resulting image.

```
mv deep_learning_object_detection.py deep_learning_object_detection_orig.py
cp <<SRC>>/deep_learning_object_detection.py .
python deep_learning_object_detection.py \
    --prototxt MobileNetSSD_deploy.prototxt.txt \
    --model MobileNetSSD_deploy.caffemodel \
    --image images/example_01.jpg -n -s output
```

### Predefined Scripts for SSD

```
workon cv400  # if not already
cd ~/Downloads/object-detection-deep-learning
cp <<SRC>>/ssd_game_run.sh .
bash ./ssd_game_run.sh | tee ssd-game-run.txt  # takes about 18 sec.
```

compare your results with those from the baseline set (a regression test)

```
ls -l ssd-game-run.txt /tmp/testssdgame.txt
diff ssd-game-run.txt /tmp/testssdgame.txt   # there are no times to diff
```

* (in this case, time to detect is not displayed -- could be added)
* confidence should not be different (expected)
* number of objects detected should not be different (expected)

The other experiment set:

```
cp <<SRC>>/ssd_bcc_run.sh
bash ./ssd_bcc_run.sh | tee ssd-bcc-run.txt  # takes about 55 sec.
```

compare your results with those from the baseline set (a regression test)

```
ls -l ssd-bcc-run.txt /tmp/testssdbcc.txt
diff ssd-bcc-run.txt /tmp/testssdbcc.txt   # there are no times to diff
```

Like before:
* (in this case, time to detect is not displayed -- could be added)
* confidence should not be different (expected)
* number of objects detected should not be different (expected)

Sadly, in this set, SSD was unable to detect any objects (unlike Yolo).

circa 202208
