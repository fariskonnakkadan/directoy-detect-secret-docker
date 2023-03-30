An attempt to utilise detect-secret for Linux images.

# detect-secrets Docker image for Linux images

This Docker image provides a way to scan a directory for secrets using the detect-secrets package. The image includes Python 3.9 and the detect-secrets package pre-installed.

To use the image, run the Docker container and specify the directory to scan using the DIR environment variable:

## Build Detect-Secret docker

`docker build -t detect-secrets .`

## Run
`docker run -e DIR=/path/to/directory detect-secrets`

The container will copy the directory to /tmp/dir, initialize a new git repository, and run the detect-secrets command on the directory.

The results will be printed to the console, and any secrets detected will be highlighted. This Docker image can be useful for scanning any directories for secrets before utilizing Linux os image for productuction.
