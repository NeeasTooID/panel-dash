# Gunakan base image yang sesuai dengan kebutuhan aplikasi Anda
FROM php:7.4-cli

# Instal dependensi yang diperlukan untuk aplikasi Anda
RUN apt-get update && apt-get install -y \
    git \
    unzip

# Pindahkan kode aplikasi Anda ke dalam container
COPY . /app
WORKDIR /app

# Jalankan perintah yang Anda butuhkan saat container dijalankan
CMD ["docker-compose", "up", "-d"]
