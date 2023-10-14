docker volume create --name poste

docker container run --rm -it \
           -v /root/poste:/from \
           -v poste:/to \
           alpine ash -c "cd /from ; cp -av . /to"
