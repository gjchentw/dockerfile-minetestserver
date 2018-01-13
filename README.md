# gjchen/minetestserver@Dockerhub
Setup a MineTest Server

Paths and Files:
* /var/lib/minetest : persistant world saving data.
* /etc/minetest/minetest.conf : config file
* /usr/share/minetest/games/* : installed subgames

GAMEID:
* -e GAMEID=minimal : default subgame, change it with flavored subgames installed

Usage:
```
docker run --restart=unless-stopped -d --name minetestserver -p 30000:30000/udp \
    -v $(pwd)/minetest.conf:/etc/minetest/minetest.conf \
    -v $(pwd)/minetest:/var/lib/minetest \
    -v $(pwd)/MineClone2:/usr/share/minetest/games/MineClone2 \
    -e GAMEID=MineClone2 \
    gjchen/minetestserver

```
