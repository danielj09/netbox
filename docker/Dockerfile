FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install -y python3 \
          python3-dev \
          python3-pip \
          python3-setuptools \
          build-essential \
          libxml2-dev \
          libxslt1-dev \
          libffi-dev \
          graphviz \
          libpq-dev \
          libssl-dev \
          zlib1g-dev \
          git




RUN pip3 install \
# gunicorn is used for launching netbox
      gunicorn \
# napalm is used for gathering information from network devices
      napalm \
# ruamel is used in startup_scripts
      ruamel.yaml

WORKDIR /opt/netbox

RUN git clone -b master https://github.com/digitalocean/netbox.git .

RUN pip3 install -r requirements.txt

COPY docker/configuration.docker.py /opt/netbox/netbox/netbox/configuration.py
COPY docker/nginx.conf /etc/netbox-nginx/nginx.conf
COPY docker/docker-entrypoint.sh docker-entrypoint.sh
COPY configuration/configuration.py /etc/netbox/config/configuration.py
COPY configuration/gunicorn_config.py /etc/netbox/config/
#COPY startup_scripts/ /opt/netbox/startup_scripts/
#COPY initializers/ /opt/netbox/initializers/


#RUN chown -R netbox:netbox /opt/netbox/netbox/media

VOLUME ["/etc/netbox-nginx/"]
