ver=`head -n 1 CHANGELOG.md|awk -F " " '{print $2}'`
echo "build siyuan $ver"
docker build -f Dockerfile.z4 -t crendy/siyuan:latest  -t crendy/siyuan:$ver .

docker push docker.io/crendy/siyuan:$ver
docker push docker.io/crendy/siyuan:latest
# docker tag crendy/siyuan:$ver crendy/siyuan:latest