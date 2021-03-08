
# docker-python-wkhtmltopdf

Docker image for python with wkhtmltopdf

Developed based on origin repository:
* https://github.com/leo-ossais/docker-python-wkhtmltopdf

# 


# deploy to docker hub

## 1. clean all images

```
docker ps -a -q  --filter ancestor=python-wkhtmltopdf
docker rm $(docker stop $(docker ps -a -q --filter ancestor=python-wkhtmltopdf --format="{{.ID}}"))
docker rmi $(docker images 'python-wkhtmltopdf' -a -q)
```

## 2. build docker image
```
docker build -t python-wkhtmltopdf -f docker_images/Dockerfile .
```

## 3. push to docker hub

```
docker login --username=forthuan
docker tag python-wkhtmltopdf forthuan/python-wkhtmltopdf:latest
docker push forthuan/python-wkhtmltopdf:latest
```

# Docker Pull Command

```
docker pull forthuan/python-wkhtmltopdf:latest
```