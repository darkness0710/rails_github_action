#
docker kill $(docker ps -q)
#
docker rm $(docker ps -a -q)
#
docker rmi $(docker images -q)
#
docker build . 
#
docker tag <image_id> darkness0710/ruby_mysql
#
docker push darkness0710/ruby_mysql
