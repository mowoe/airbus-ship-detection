FROM tensorflow/tensorflow

RUN sudo apt-get install python-opencv
RUN sudo pip install --upgrade keras
RUN sudo pip install mrcnn

