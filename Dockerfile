FROM python:3-buster
RUN apt-get -qq update
RUN curl -sL https://deb.nodesource.com/setup_12.x  | bash -
RUN apt-get install -y nodejs
RUN pip3 install awscli aws-sam-cli
