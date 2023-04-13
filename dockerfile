FROM python:3.9.5
RUN mkdir /app
WORKDIR /app/
ADD . /app/
RUN pip install -r requirments.txt
CMD [ "python", "/app/main.py" ]


# generate image using : docker build -t flask-kubernetes .
# look at image using docker images
# to deploy create a yaml file and remember to give the same image name there
# to deploy :  kubectl apply -f deployment.yaml
# minikube dashboard : to open the dashboard and we can see the pods

# minikube service "service name" in this example its flask-test-service

# need to install docker desktop, kubernetes CLI and minikube