FROM ubuntu:18.04
# Update apt packages
#RUN apt update
RUN apt -y update && apt install -y apt-utils

# Install vim
RUN apt install -y vim

# Install python 3.8 (from ppa repository)
RUN apt install -y python3.8

# Install pip
RUN apt install -y python3-pip

# Install lsof
RUN apt install -y lsof

# Install pip packages (relevants for "import" python script)
#RUN pip3 install getpass -y
#RUN pip install -r requirements.txt
#RUN pip3 install http.server
#RUN pip3 install socketserver

# Clean all packages
RUN apt-get clean

#copy files
COPY ./app /app

# Set working directory for code
WORKDIR /app

#Set Enviroment >add python3
ENV PATH "$PATH:/usr/bin/python3"

# Run the Python script
#ENTRYPOINT [  ]
CMD [ "sh", "-c","/usr/bin/python3 getUser.py ; sleep 1d" ]
