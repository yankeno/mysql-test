FROM mysql:8-debian

RUN rm -f /etc/apt/sources.list.d/mysql.list

RUN apt-get update && apt-get install -y \
    gnupg \
    wget \
    lsb-release \
    curl \
    locales \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN wget https://downloads.mysql.com/docs/world_x-db.tar.gz \
    && tar -zxvf world_x-db.tar.gz \
    && mv world_x-db/world_x.sql /docker-entrypoint-initdb.d/world_x.sql \
    && rm -rf world_x-db \
    && rm -rf world_x-db.tar.gz \
    && wget https://downloads.mysql.com/docs/sakila-db.tar.gz \
    && tar -zxvf sakila-db.tar.gz \
    && mv sakila-db/sakila-schema.sql /docker-entrypoint-initdb.d/sakila-schema.sql \
    && mv sakila-db/sakila-data.sql /docker-entrypoint-initdb.d/sakila-data.sql \
    && rm -rf sakila-db \
    && rm -rf sakila-db.tar.gz

RUN wget https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell_8.0.35-1debian11_amd64.deb \
    && dpkg -i mysql-shell_8.0.35-1debian11_amd64.deb \
    || apt-get update && apt-get install -f -y \
    && rm mysql-shell_8.0.35-1debian11_amd64.deb

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen en_US.UTF-8
