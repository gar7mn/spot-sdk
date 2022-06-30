FROM python:3.7

WORKDIR /workspace
ENV SPOT /workspace/spot
#copy the requirements
COPY requirements.txt ./
#install the requirements and Boston dynamics packages
RUN pip install --no-cache-dir -r requirements.txt
#copy the sdk folders
COPY /protos  ./workspace
COPY /tools ./workspace
COPY /prebuilt ./workspace
#copy the Example programs
COPY /python ./workspace/spot
#change directory to python files
RUN cd ./workspace/spot/python/examples
#start bash
ENTRYPOINT /bin/bash
