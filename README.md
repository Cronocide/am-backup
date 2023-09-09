# Apple Music Backup Container
A docker container to generate a running list of songs that have been added to Apple Music. These lists can be consumed from the gamdl-docker container.

## Volume mappings

Map the music folder to `/data` :

```sh
docker run -v ~/Desktop/music:/data am-backup
```

## Environment Variables

The container is configured with the following variables :

`OUTPUT_PATH` *_(Optional)_* : The path to save the list to. `/data/` by default.

`COOKIES_TXT_PATH` *_(Optional)_* : The path to `cookies.txt`, a netscape cookies file containing your Apple Music cookies. `/data/cookies.txt` by default.
