# Use the latest ubuntu image as base for the new image
# ubuntu is the image name and latest is a tag that 
# references a particular version of the image.
# In this case latest is always the latest LTS image
# at the time of writing this, it's 16.04.
FROM ubuntu:latest

# Run a system update to get it up to speed
RUN apt-get update && apt-get install -y \
    curl


# Get the Address for Anaconda
RUN curl -O https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh

# Run the Script for Anaconda
RUN yes yes | bash Anaconda3-5.0.1-Linux-x86_64.sh

# Install Jupyter
RUN /yes/bin/conda install jupyter -y --quiet


