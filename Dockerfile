FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y curl build-essential

FROM node:10

RUN curl -L https://npmjs.org/install.sh | sh
RUN npm install --force -g npx
RUN git clone https://github.com/keeper575/simple_calculator.git
RUN cd simple_calculator && npm start

EXPOSE 3000
