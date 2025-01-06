# Apple Music Backup Container
A docker container to generate a running list of songs that have been added to Apple Music. These lists can be consumed from the gamdl-docker container.

![Build Status](https://jenkins.cronocide.net/buildStatus/icon?job=git.cronocide.net%2Fam-backup%2Fmaster)

## Usage

```
usage: am_backup [-h] [-r] [-l LOG] [-v] start end

positional arguments:
  start              The start of your library's song index to get
  end                The end of your library's song index to get

options:
  -h, --help         show this help message and exit
  -r, --reverse      Reverse the list of URLs (last to first)
  -l LOG, --log LOG  Specify a file to log to.
  -v, --verbose      Include verbose information in the output. Add 'v's for more output.

Example:
	am_backup -h
```

## Volume mappings

Map the music folder to `/data` :

```sh
docker run -v ~/Desktop/music:/data am-backup
```

## Environment Variables

The container is configured with the following variables :

`OUTPUT_PATH` *_(Optional)_* : The path to save the list to. `/data/` by default.

`COOKIES_TXT_PATH` *_(Optional)_* : The path to `cookies.txt`, a netscape cookies file containing your Apple Music cookies. `/data/cookies.txt` by default.

