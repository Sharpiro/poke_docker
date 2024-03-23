set -e

docker build -t fr_lg_plus -f fr_lg_plus.Dockerfile .
commit=`docker run --rm fr_lg_plus git rev-parse --short HEAD`
docker run --rm fr_lg_plus cat pokefirered.gba > fr_lg_plus_${commit:0:7}.gba
