FROM alpine:3.19

RUN apk add --no-cache \
    bash curl wget git python3 py3-pip \
    neofetch \
    net-tools iproute2 iputils bind-tools \
    vim nano htop tree unzip zip \
    build-base gcc g++ make \
    openssh-client \
    jq less man-pages sudo lsof \
    procps coreutils file ca-certificates \
    openssl-dev zlib-dev libffi-dev \
    sqlite-dev readline-dev ncurses-dev \
    libxml2-dev libxslt-dev \
    postgresql-dev mariadb-dev \
    yaml-dev libpng-dev libjpeg-turbo-dev \
    musl-dev linux-headers

RUN wget -qO /usr/local/bin/ttyd https://github.com/tsl0922/ttyd/releases/download/1.7.3/ttyd.x86_64 && \
    chmod +x /usr/local/bin/ttyd

RUN echo "neofetch" >> /root/.bashrc && \
    echo "cd /root" >> /root/.bashrc

EXPOSE 7681

CMD ["/bin/bash", "-c", "\
    echo \"export PS1='\\[\\033[01;32m\\]$USERNAME@\\h\\[\\033[00m\\]:\\[\\033[01;34m\\]\\w\\[\\033[00m\\]\\$ '\" >> /root/.bashrc && \
    /usr/local/bin/ttyd -p 7681 -c $USERNAME:$PASSWORD /bin/bash"]
