docker stop $(docker ps|grep jenkins_python| awk '{print $1}')
docker container rm $(docker container ls -a|grep jenkins_python| awk '{print $1}')
docker image rm $(docker images|grep jenkins_python| awk '{print $3}')
docker build --tag jenkins_python -f Dockerfile .
docker run --rm --name jenkins -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins_python