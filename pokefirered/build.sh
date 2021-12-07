docker build -t pokefirered -f pokefirered.Dockerfile .
docker run --rm pokefirered cat pokefirered.gba > pokefirered.gba
