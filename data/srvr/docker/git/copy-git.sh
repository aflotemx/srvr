docker volume create --name repo

docker container run --rm -it \
           -v /root/repo:/from \
           -v repo:/to \
           alpine ash -c "cd /from ; cp -av . /to"
