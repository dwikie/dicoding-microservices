# Melakukan build image menggunakan Dockerfile di current directory file saat ini
docker build -t item-app:v1 .
# Menampilan list image pada local docker
docker images
# Mengubah nama image sesuai dengan nama user dan repository docker hub
docker tag item-app:v1 neithroid/item-app:v1
# Melakukan login docker
echo $PASSWORD_DOCKER_HUB | docker login -u neithroid --password-stdin
# Melakukan upload/push image ke docker hub
docker push neithroid/item-app:v1