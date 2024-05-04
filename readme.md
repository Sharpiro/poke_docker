# Poke Docker

## Gen 1/2

### Build builder image

Default

```sh
docker build -f gen_1_2/asm_builder.Dockerfile -t pokemon_asm_builder .
```

Use specific RGBDS version

```sh
docker build -f gen_1_2/asm_builder.Dockerfile --build-arg RGBDS_VERSION=v0.5.2 -t pokemon_asm_builder .
```

### Build game using builder image

```sh
git clone https://github.com/pret/pokecrystal.git
cd pokecrystal
docker run --rm -it -v .:/opt/src pokemon_asm_builder
```
