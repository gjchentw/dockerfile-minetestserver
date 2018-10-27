FROM gjchen/alpine:3.8
MAINTAINER gjchen <gjchen.tw@gmail.com>


RUN	apk --no-cache --no-progress upgrade -f && \
	apk --no-cache --no-progress add minetest-server && \
	chown -R minetest:games /var/lib/minetest

COPY	s6.d /etc/s6.d

ENV	GAMEID="minimal"
EXPOSE	30000/udp

