### PROBLEM:

You have an application running in a very specialized environment that
you want to share.

### SOLUTIONS:

- VMs
  - Run your app in a VM that virtualizes the OS and application layer.
- Containers
  - Run your app as a container that virtualizes only the application layer.
  - The container runs on the host OS, and the environment is managed by a container engine (like Docker).

### RUNNING DOCKER

Run "/opt/docker-desktop/Docker Desktop"

### DOCKERFILE

This file tells Docker how to create an image. Syntax is INSTRUCTION arguments

- FROM can specify an image template
- WORKDIR specifies the working directory to run your commands.
  If the directory doesn't exist, it will be created.
  Your template may already have the directory you specify.
  It's good practice to always define working directory at the start of
  the Dockerfile, and you can change it later.
- RUN runs a command, like one that installs dependencies

### IMAGE

An image is a snapshot of the application and environment you want to package.

Build the image using:
`docker build -t TAG_NAME .`

Now, the image magically appears in Docker Desktop.
If you build an image that is identical to another image, it looks like Docker is
smart enough to not duplicate the image. But if you modify the files and build, a
new image appears.

### CONTAINER

A container is a running instance of an image.
