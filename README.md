# Simple calculator

This is an attempt to create a simple calculator to learn the basics of reactjs and make it docker compatible

### This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

### Steps taken to create first working version without writing any code

- npx create-react-app simple_calculator
- cd simple_calculator
- npm start

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

### Credit
The source code were copied from https://medium.com/@nitinpatel_20236/how-to-build-a-simple-calculator-application-with-react-js-bc10a4568bbd#:~:text=The%20onclick%20function%20simple%2C%20reads,JS. to start

## Docker

hosted at https://hub.docker.com/repository/docker/gauravkumar552/simple_calc
After pulling image please run following command (I had to use sudo)
docker run -p 3001:3000 -it gauravkumar552/simple_calc:v14

### Kubernetes
- gcloud auth login
- gcloud container clusters get-credentials CLUSTER_NAME --zone ZONE  --project PROJECT_NAME
- kubectl create deployment simple-calc --image=gauravkumar552/simple_calc:v14
- kubectl expose deployment simple-calc --type LoadBalancer  --port 3000 --target-port 3000
