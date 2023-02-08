<img src="https://user-images.githubusercontent.com/1971953/217623988-69cbd945-dc5b-431b-9d48-7479750a4565.png" alt="ryuudev logo" height="200"/>

# ryuudev

Ryuujin's dev environment

## Usage

Build the Docker image

```
docker build -t ryuudev docker/phpdev
```

Start PHP:

```
docker run -it --rm -v $(pwd):/data ryuudev php "$@"
```

Start composer:

```
docker run -it --rm -v $(pwd):/data ryuudev composer "$@"
```

Start the environment with Zsh:

```
docker run -it --rm -v $(pwd):/data ryuudev zsh
```
