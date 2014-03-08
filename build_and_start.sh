# Cleanup potential old images and containers
echo "Killing container"
sudo docker kill nginx_cont_1
sudo docker rm nginx_cont_1
echo "Killing images"
sudo docker rmi nginx_img_1

# To start using it, build a new container image with the following:
echo "Building image"
sudo docker build -t nginx_img_1 . 

# And using that image - which we tagged as nginx_img_1 - we can run a new container:
echo "Creating and running container"
sudo docker run -name nginx_cont_1 -link web:web -p 80:80 -i -t nginx_img_1
