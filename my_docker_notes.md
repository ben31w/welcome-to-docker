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

### CONTAINER

A container is a running instance of an image.

One way to start a container is to run an image in Docker Desktop.

Another way to start a container is this command:
`docker run -d -p HOST_PORT:CONTAINER_PORT TAG_NAME`

<i>Note on ports:</i>
Your computer's ports are different from the container's ports.
You forward a port on your machine to a port on the container using the 
syntax above. You could use the same port numbers for host and container.
