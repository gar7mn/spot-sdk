FROM python:3.7

WORKDIR /workspace
ENV SPOT /workspace/spot
#copy the requirements
COPY requirements.txt ./
#install the requirements and Boston dynamics packages
RUN pip install --no-cache-dir -r requirements.txt
#copy the Example programs
COPY /python ./workspace/spot
#start bash
ENTRYPOINT /bin/bash
