wget https://stepik.org/media/attachments/lesson/686238/jusan-docker-mount.zip
unzip jusan-docker-mount

docker run \
  -d \
  -it \
  -p 9999:81 \
  --name jusan-docker-mount \
  -v "$(pwd)"/jusan-docker-mount.conf:/etc/nginx/conf.d/jusan-docker-mount.conf \
  -v "$(pwd)"/jusan-docker-mount/:/var/www/example/ \
  nginx:mainline
