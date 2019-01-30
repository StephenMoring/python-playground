docker kill blog 
docker rm blog

# build
docker pull stephenmoring/python_project

# run
docker run --name blog -p 5000:5000 stephenmoring/python_project


