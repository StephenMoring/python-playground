# Kill any old infra 
docker kill blog 
docker rm blog

# build
docker build -t stephenmoring/python_project .

# run
docker run --name blog -p 5000:5000 -d stephenmoring/python_project
    #p x:y
        # x external: y internal ports

# docker ps # List containers 
# docker images # List all images
# docker exec -it [Image Name] bash # Get access to the image 
