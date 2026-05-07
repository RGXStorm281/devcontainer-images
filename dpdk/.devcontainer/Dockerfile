# use the microsoft devcontainer image as base
FROM mcr.microsoft.com/devcontainers/rust:latest

# Copy your script into the image
COPY post-create.sh /usr/local/bin/post-create.sh

# Make sure it’s executable
RUN chmod +x /usr/local/bin/post-create.sh

# Run your script during build
RUN /usr/local/bin/post-create.sh