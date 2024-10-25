# React frontend container

This is an example of a container that runs with a react app with a custom port.

The purpose is to run a react app from a container

## Permissions for scripts
Run:
```
chmod +x build_image.sh
chmod +x run_image.sh
chmod +x stop_container.sh 
```
before to give execution permisions to each script
## Running/Building the container
to build only
```
chmod +x build_image.sh
./build_image.sh
```

to run only
```
./run_image.sh
```

The app should be running in your localhost port 5050

to stop container running
```
./stop_container.sh
```