FROM tensorflow/tensorflow

RUN apt-get update

RUN apt-get install -y python-opencv

RUN apt-get install ipython3
RUN apt-get install git
RUN apt install python-zmq
RUN apt-get install python3-pip
RUN apt install python-urllib3
RUN apt-get install wget

RUN python3 -m pip install --upgrade pip

RUN pip install --upgrade keras
RUN pip install mrcnn
RUN pip install kaggle
RUN pip install scikit-image

RUN python3 -m pip  install kaggle
RUN python3 -m pip  install --upgrade keras
RUN python3 -m pip  install tensorflow
RUN python3 -m pip  install pillow
RUN python3 -m pip  install pandas
RUN python3 -m pip  install matplotlib
RUN python3 -m pip  install scikit-image
RUN python3 -m pip  install mrcnn

RUN python3 -m pip install opencv-python
RUN python3 -m pip install ipykernel
RUN python3 -m ipykernel install --user
# TensorBoard
EXPOSE 6006
# IPython
EXPOSE 8888

ADD Airbus_Ship_Detection.ipynb /notebooks/Airbus_Ship_Detection.ipynb
ADD airbus_ship_detection.py /notebooks/airbus_ship_detection.py 

ENTRYPOINT ["/run_jupyter.sh", "--allow-root"]