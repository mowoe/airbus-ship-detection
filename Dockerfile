FROM tensorflow/tensorflow

RUN apt-get update

RUN apt-get install -y python-opencv

RUN apt-get install git

RUN pip install --upgrade keras
RUN pip install mrcnn
RUN pip install kaggle

# TensorBoard
EXPOSE 6006
# IPython
EXPOSE 8888

ENTRYPOINT ["/run_jupyter.sh", "--allow-root"]