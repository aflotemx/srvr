docker volume create --name openpnv

docker container run --rm -it \
           -v /root/openvpn:/from \
           -v openvpn:/to \
           alpine ash -c "cd /from ; cp -av . /to"
