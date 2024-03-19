FROM ubuntu:22.04


COPY . /app 

# ! Update package index and install Python3
RUN  apt update
RUN  apt install -y python3



#! Install pip and dependencies
RUN  apt install  python3-pip -y


#! create new user - passwordless and switch to him :
RUN adduser appuser
USER appuser


#!  Set the working directory --- and the rest
WORKDIR /app


#! this command will refure to run as root
RUN  pip install -r requirements.txt


CMD ["bash","run_script.sh"]

EXPOSE 8001