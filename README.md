# Claude container

A simple podman claude container.
- Place your `.claude.json` inside the config directory as `claude.json`. 
- **Remember this is a sensitive file.**

The Dockerfile is based on the documentation at https://code.claude.com/docs/en/quickstart 

## Building

```bash
podman build -t claude:local .
```

## Running

```bash
podman run --rm -it claude:local <optional args for claude>
```

If you want to mount a directory, use `/mnt` as destination

For example the current working directory
```bash
podman run --rm -it -v $(pwd):/mnt claude:local 
```

## Todo

skip questions, its in a sandbox anyway
