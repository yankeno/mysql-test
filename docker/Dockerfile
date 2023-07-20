FROM mysql:8-debian

RUN apt-get update && apt-get install -y \
    gnupg \
    wget \
    lsb-release \
    curl \
    locales

RUN wget https://dev.mysql.com/get/mysql-apt-config_0.8.25-1_all.deb
RUN dpkg -i mysql-apt-config_0.8.25-1_all.deb
RUN apt-get update && apt-get install -y mysql-shell
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen en_US.UTF-8
