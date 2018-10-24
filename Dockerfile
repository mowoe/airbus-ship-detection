FROM tensorflow/tensorflow

RUN apt-get update

RUN apt-get install -y python-opencv

RUN apt-get install ipython3
RUN apt-get install git
RUN apt install python-zmq
RUN apt-get install python3-pip
RUN apt install python-urllib3

RUN python3 -m pip install --upgrade pip

RUN pip install --upgrade keras
RUN pip install mrcnn
RUN pip install kaggle
RUN pip install scikit-image

RUN python3 -m pip  install kaggle
RUN python3 -m pip  install --upgrade keras
RUN python3 -m pip  install tensorflow

RUN pip3 install zmq

RUN python3 -m pip install opencv-python
RUN python3 -m pip install ipykernel
RUN python3 -m ipykernel install --user
# TensorBoard
EXPOSE 6006
# IPython
EXPOSE 8888

ENTRYPOINT ["/run_jupyter.sh", "--allow-root"]