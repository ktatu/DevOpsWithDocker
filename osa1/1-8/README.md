Pulling the exercise:
```
docker pull devopsdockeruh/first_volume_exercise
```

Checking what the exercise contains:
```
docker run -d -it --name 18 devopsdockeruh/first_volume_exercise
docker exec -it 18 bash
```

...Reading the files inside the container

Creating the text file in our local working directory for the app to write to (otherwise the volume command would create a directory):
```
touch logs.txt
```

Running it:
```
docker run -d -v "$(pwd)/logs.txt:/usr/app/logs.txt" devopsdockeruh/first_volume_exercise
```

After a few seconds reading the local logs.txt file reveals a secret message "Volume bind mount is easy"
