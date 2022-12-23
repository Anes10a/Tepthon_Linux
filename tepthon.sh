branch=master
git clone -b $branch https://github.com/TheTepthon/Tepthon /root/TheTepthon
cp Tepthon/.env /root/TheTepthon/.env
cd /root/TheTepthon
docker build . --rm --force-rm --compress --pull --file Dockerfile -t Tepthon
docker run --privileged --env-file .env --rm -i Tepthon
