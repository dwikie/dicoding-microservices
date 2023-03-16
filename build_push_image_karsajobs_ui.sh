# Melakukan build image
docker build -t neithroid/karsajobs-ui:latest .
# Push image ke DockerHub
echo "Push image ke DockerHub..."
# Melakukan login docker
echo $PASSWORD_DOCKER_HUB | docker login -u neithroid --password-stdin
# Melakukan upload/push image ke docker hub
docker push neithroid/karsajobs-ui:latest
echo "Sukses push image ke repository Docker Hub"
echo
# Push Github Package
echo "Push image ke GitHub Container Registry..."
# Mengubah nama image sesuai dengan nama user dan repository github
docker tag neithroid/karsajobs-ui:latest ghcr.io/dwikie/karsajobs-ui:latest
# Melakukan login docker with Personal Access Token Github
echo $PAT | docker login ghcr.io -u dwikie --password-stdin
# Melakukan upload/push ke github packages
docker push ghcr.io/dwikie/karsajobs-ui:latest
echo "Sukses push image ke repository GitHub"