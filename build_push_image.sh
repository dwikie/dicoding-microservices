# Melakukan build image menggunakan Dockerfile di current directory file saat ini
docker build -t item-app:v1 .
# Menampilan list image pada local docker
docker images

# Push Docker Hub
# Mengubah nama image sesuai dengan nama user dan repository docker hub
docker tag item-app:v1 neithroid/item-app:v1
# Melakukan login docker
echo $PASSWORD_DOCKER_HUB | docker login -u neithroid --password-stdin
# Melakukan upload/push image ke docker hub
docker push neithroid/item-app:v1

# Push Github Package
docker tag item-app:v1 ghcr.io/dwikie/dicoding-microservices:proyek-pertama
# Melakukan login docker
echo $TOKEN_GITHUB_PKG | docker login -u neithroid --password-stdin
# Melakukan upload/push ke github packages
docker push ghcr.io/dwikie/dicoding-microservices:proyek-pertama