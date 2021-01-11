Running the image requires you to mount your docker socket and binary to the container:

Running a container on ubuntu:
```
docker run -it -v /usr/bin/docker:/usr/bin/docker -v /var/run/docker.sock:/var/run/docker.sock image_name
```

The script will ask you to login to your docker hub account. If it asks you to login with your github account then you probably gave an incorrect repository url.
