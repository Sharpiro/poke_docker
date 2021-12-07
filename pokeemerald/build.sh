docker build -t pokeemerald -f pokeemerald.Dockerfile .
docker run --rm pokeemerald cat pokeemerald.gba > pokeemerald.gba
