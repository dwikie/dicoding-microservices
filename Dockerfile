# Base image untuk melakukan build
FROM node:14
# Membuat direktori baru bernama app didalam container yang akan dibuat
WORKDIR /app
# Meng-copy file dari current directory tempat file ini ke workdir
COPY . .
# Menetapkan environment variables
ENV NODE_ENV=production DB_HOST=item-db
# Menginstall dependencies dan build app
RUN npm install --production --unsafe-perm && npm run build
# Mengekspos port 8080 dari container yang mana ini merupakan port yang digunakan aplikasi agar aplikasi dapat diakses melalui port ini
EXPOSE 8080
# Menjalankan app
CMD  ["npm", "start"]