# Base go-image
FROM golang:1.19.3

# create a directory for the app
RUN mkdir /app

# Copy all files 
COPY . /app

# Workdir
WORKDIR /app

# Run command:
# build 
RUN go build -o hello .

# Run executable
CMD [ "/app/hello" ]