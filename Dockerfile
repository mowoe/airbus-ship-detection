FROM tensorflow/tensorflow

RUN apt-get update

RUN apt-get install -y python-opencv

RUN pip install --upgrade keras
RUN pip install mrcnn

# TensorBoard
EXPOSE 6006
# IPython
EXPOSE 8888

ENTRYPOINT ["/run_jupyter.sh", "--allow-root"]