FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y curl build-essential

FROM node:10

RUN curl -L https://npmjs.org/install.sh | sh
RUN npm install --force -g npx
RUN git clone https://github.com/keeper575/simple_calculator.git
RUN cd /simple_calculator

COPY ./docker-entrypoint.sh /

ENTRYPOINT [ "/docker-entrypoint.sh"]

EXPOSE 3000
