branch=main
git clone -b $branch https://github.com/TheTepthon/Svebot /root/TheTepthon
cp Savebot/.env /root/TheTepthon/.env
cd /root/TheTepthon
docker build . --rm --force-rm --compress --pull --file Dockerfile -t Savebot
docker run --privileged --evn-file .env --rm -i Savebot
