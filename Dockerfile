# sudo docker build . --tag ktaskn/jupyter-pytorch

FROM pytorch/pytorch
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y tzdata libopencv-dev libgl1-mesa-dev
RUN pip install -U pip \
    && pip install jupyter scipy matplotlib grad-cam opencv-python sklearn pandas timm gradio pytorchvideo

CMD ["jupyter", "notebook", "--allow-root", "--port", "8888", "--ip", "0.0.0.0"]
