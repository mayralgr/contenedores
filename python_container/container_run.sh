IMAGE_NAME="python-container"
VERSION_IMAGE=0.0.1
# -it pseudo tty and -i stdin open
# --rm removes container if another was running
# links scripts in the container with in the folder scripts folder
# name of the image to run and open a bash command line
podman run -it --rm \
    -v $PWD/scripts:/scripts local-$IMAGE_NAME:$VERSION_IMAGE /bin/bash 
