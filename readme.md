# Poke Docker

## Gen 1/2

### Build builder image

```sh
docker build -f gen_1_2/asm_builder.Dockerfile -t pokemon_asm_builder .
```

### Build game

```sh
git clone https://github.com/pret/pokecrystal.git
cd pokecrystal
docker run --rm -it -v .:/opt/src pokemon_asm_builder
```
