FROM ubuntu:22.04 
ARG DEBIAN_FRONTEND=noninteractive


RUN apt-get update
RUN apt-get install -y git zsh wget
RUN apt-get install -y imagemagick
RUN    apt-get -y --no-install-recommends install \
        php8.1-bcmath \ 
        php8.1-bz2 \ 
        php8.1-gd \ 
        php8.1-gmp \ 
        php8.1-gnupg \ 
        php8.1-imagick \ 
        php8.1-imap \ 
        php8.1-mailparse \ 
        php8.1-mysql \ 
        php8.1-pgsql \ 
        php8.1-redis \ 
        php8.1-xdebug \ 
        php8.1-yaml \
	php8.1-dom \
	php8.1-xml \
	php8.1-curl \
	libmcrypt-dev \
	php8.1-sqlite3 \
	mcrypt;

RUN apt-get install -y vim

RUN apt-get install -y nodejs

RUN apt-get clean; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*


RUN cd /root && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv /root/composer.phar /bin/composer

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
RUN touch ~/.zshrc

RUN sed -i 's/ash/zsh/g' /etc/passwd

# ENV FILES
COPY env_files/dot_vimrc "/root/.vimrc"

RUN mkdir /data

WORKDIR "/data"
