```sh
docker image build . -t tableplus
docker container run --rm -dit \
    --net host \
    -e DISPLAY=$DISPLAY \
    -v $HOME/.Xauthority:/root/.Xauthority \
    tableplus
```
