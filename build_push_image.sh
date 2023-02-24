# Melakukan build image menggunakan Dockerfile di current directory file saat ini
docker build -t item-app:v1 .
# Menampilan list image pada local docker
docker images
echo
# Push Docker Hub
echo "Push ke GitHub Container Registry/GitHub Packages"
# Mengubah nama image sesuai dengan nama user dan repository docker hub
docker tag item-app:v1 neithroid/item-app:v1
# Melakukan login docker
echo $PASSWORD_DOCKER_HUB | docker login -u neithroid --password-stdin
# Melakukan upload/push image ke docker hub
docker push neithroid/item-app:v1
echo "Sukses push ke repository Docker Hub"
echo
# Push Github Package
echo "Push ke GitHub Container Registry/GitHub Packages"
# Mengubah nama image sesuai dengan nama user dan repository github
docker tag item-app:v1 ghcr.io/dwikie/dicoding-microservices:proyek-pertama
# Melakukan login docker with Personal Access Token Github
echo $PAT | docker login ghcr.io -u dwikie --password-stdin
# Melakukan upload/push ke github packages
docker push ghcr.io/dwikie/dicoding-microservices:proyek-pertama