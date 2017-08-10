FROM ubuntu

# Install nginx-extras for lua support
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 573BFD6B3D8FBC641079A6ABABF5BD827BD9BF62 \
	&& echo "deb http://nginx.org/packages/ubuntu/ xenial nginx" >> /etc/apt/sources.list \
	&& apt-get update \
	&& apt-get install --no-install-recommends --no-install-suggests -y nginx \
	&& rm -rf /var/lib/apt/lists/*

COPY nginx.conf /etc/nginx/conf/nginx.conf
