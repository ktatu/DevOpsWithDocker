Both test and production environment containers are made with the same Dockerfile

Creating image for production environment:
```
docker build -t some_name . --build-arg ENV=production --build-arg SECRET_KEY=your_key
```
The secret key can be anything.

Image for test env:
```
docker build . --build-arg ENV=test
```

Running the container:
```
docker run -it -p your_port:3000 image_tag
```
