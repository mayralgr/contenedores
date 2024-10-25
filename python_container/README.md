# Python container

This is an example of a container that runs with python3 and installs numpy with a specific version

Purpose is have a connection to the scripts subfolder in this and be able to run the scripts inside the container


to build and run:
```
chmod +x container_build_and_run.sh
./container_build_and_run.sh
```
to build only
```
chmod +x container_build.sh
./container_build.sh
```
to run only
```
chmod +x container_run.sh
./container_run.sh
```

then you will get a bash command line, you can run the sample scripts with
```
python3 hello-word.py
```
or
```
python3 numpy_example.py
```


exit the container with:

```
exit
```
