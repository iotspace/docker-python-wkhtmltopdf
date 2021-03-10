# delete and re-build

clear && docker rm $(docker stop $(docker ps -a -q --filter ancestor=docker-html2pdf --format="{{.ID}}")) && docker rmi $(docker images 'docker-html2pdf' -a -q) && docker build -t docker-html2pdf -f Dockerfile .


# run latest container copy eom.pdf eoy.pdf to local
# docker run $(docker images 'docker-html2pdf' -a -q)

docker run $(docker images 'docker-html2pdf' -a -q) && docker cp $(docker ps -l --format="{{.ID}}"):/temp/ ./temp 


###################
### support cmd ###
###################

# docker stop all containers before remove
docker stop $(docker ps -a --format="{{.ID}}")

# docker rm all containers
docker rm $(docker ps -a --format="{{.ID}}")

# docker rm all images
docker rmi $(docker images -a --format="{{.ID}}")



docker cp $(docker ps -l --format="{{.ID}}"):*.* ./temp


#####################

clear && docker rm $(docker stop $(docker ps -a -q --filter ancestor=docker-html2pdf --format="{{.ID}}")) && docker rmi $(docker images 'docker-html2pdf' -a -q) && docker build -t docker-html2pdf -f Dockerfile . && docker run $(docker images 'docker-html2pdf' -a -q) && docker cp $(docker ps -l --format="{{.ID}}"):/temp/ ./temp 
