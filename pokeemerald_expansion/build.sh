docker build -t pokeemerald_expansion -f pokeemerald_expansion.Dockerfile .
commit=`docker run --rm pokeemerald_expansion git rev-parse --short HEAD`
docker run --rm pokeemerald_expansion cat pokeemerald.gba > pokeemerald_expansion_${commit:0:7}.gba
