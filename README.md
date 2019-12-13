# References

The following instructions were heavily influenced by the instructions from [PyImageSearch](https://www.pyimagesearch.com/). Most specifically:

* [YOLO object detection with OpenCV](https://www.pyimagesearch.com/2018/11/12/yolo-object-detection-with-opencv/)
* [How to install OpenCV 4 on Ubuntu](https://www.pyimagesearch.com/2018/08/15/how-to-install-opencv-4-on-ubuntu/) Specifically with Python3 and OpenCV 4.0.0
* [Object detection with deep learning and OpenCV](https://www.pyimagesearch.com/2017/09/11/object-detection-with-deep-learning-and-opencv/) For comparison with OpenCV and the SSD Algorithm.

# Installation

These instuctions assume a clean, up to date, Ubuntu 18.04.3 LTS installation. Furthermore, the baseline instructions from [PyImageSearch](https://www.pyimagesearch.com/) were written assuming use of Python3 and the (then) newly released OpenCV 4.0.0, as such that is the baseline that will be used here.

Following from [How to install OpenCV 4 on Ubuntu](https://www.pyimagesearch.com/2018/08/15/how-to-install-opencv-4-on-ubuntu/), let's dive in.

## Diskspace

As stated above w.r.t. the assumption, following these instructions required approximately $((30461704-19183108))+$((31274772-30461704)) bytes or 11.6GB of space before experiments.
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

Could NOT find PythonInterp: Found unsuitable version "1.4", but required is at least "2.7" (found /home/hissam/.virtualenvs/cv/bin/python)

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

# Get To Work $((31274772-30461704))

## YOLO Experiments

Inspired from [YOLO object detection with OpenCV](https://www.pyimagesearch.com/2018/11/12/yolo-object-detection-with-opencv/)

## Pull/copy/whatever All the test images and models and unpack

```
cd ~/Downloads
cp <<SRC>>/*.zip .
unzip yolo-object-detection.zip
unzip object-detection-deep-learning.zip
cd yolo-object-detection/images/
unzip ../../objDetect.zip
unzip ../../bccpics.zip
unzip ../../arlopics.zip
cd ../..
```

Remember... virtualenv! 

```
workon cv400 #if not already in 'cv400'
cd ~/Downloads/yolo-object-detection/
python yolo.py --image images/baggage_claim.jpg --yolo yolo-coco
```

You should have your first successful object detection result displayed.
The ```yolo.py``` program was modified to add additional command line args to run in batch mode while providing textual output as to the object detected and the confidence score. Replace that version of ```yolo.py``` with the modified one and re-run the same example with the args '-n' (non-interactve) and '-s' save resulting image.

```
mv yolo.py yolo_orig.py
cp <<SRC>>/yolo.py .
python yolo.py --image images/baggage_claim.jpg --yolo yolo-coco -n -s
```

## SSD Experiments

Inspired from [Object detection with deep learning and OpenCV](https://www.pyimagesearch.com/2017/09/11/object-detection-with-deep-learning-and-opencv/) For comparison with OpenCV and the SSD Algorithm.

