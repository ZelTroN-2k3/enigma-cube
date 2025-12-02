# On utilise une image officielle PHP 5.6 avec Apache
FROM php:5.6-apache

# --- FIX DES DÉPÔTS (Mode Archivage) ---
RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list
RUN echo "Acquire::Check-Valid-Until false;" > /etc/apt/apt.conf.d/99-ignore-valid-until
RUN echo "Acquire::AllowInsecureRepositories true;" > /etc/apt/apt.conf.d/99-allow-insecure

# On active le module Rewrite d'Apache
RUN a2enmod rewrite

# 1. On met à jour et on installe GD en forçant l'installation (c'est la ligne magique)
RUN apt-get -o Acquire::Check-Valid-Until=false update && \
    apt-get install -y --allow-unauthenticated \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    && rm -rf /var/lib/apt/lists/*

# 2. On configure l'extension GD (chemins spécifiques pour PHP 5.6)
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/

# 3. On installe GD et les extensions BDD
RUN docker-php-ext-install -j$(nproc) gd mysql mysqli pdo pdo_mysql

# On copie les fichiers et on donne les droits
COPY . /var/www/html/
RUN chown -R www-data:www-data /var/www/html/