FROM gjchen/alpine:3.7
MAINTAINER gjchen <gjchen.tw@gmail.com>


RUN	apk --no-cache --no-progress upgrade -f && \
	apk --no-cache --no-progress add minetest-server && \
	chown -R minetest:games /var/lib/minetest



EXPOSE	30000/udp
VOLUME	["/var/lib/minetest", "/usr/share/minetest/games"]
CMD	su-exec minetest:games minetestserver --info --gameid stampy_game
