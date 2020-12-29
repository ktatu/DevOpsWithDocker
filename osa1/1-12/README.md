Running the backend container:
```
docker run -d -v "$(pwd)/logs.txt:/backend-example-docker/logs.txt" -p 8000:8000 112_back
```

Running frontend container:
```
docker run -d -p 5000:5000 112_front
```
