# spotimux
Spotify Downloader on Termux. It uses zotify under the sleeve to do the magic! Be Sure to install the below dependencies and apps.

## Usage 
1. Download the bash script and paste it into a directory accessible by termux
2. Run the script by
```shell
bash spotimux.sh
```

## TODO [ v0.2 alpha ]
- [x] Search songs
- [x] Download
- [ ] Download: All Liked Songs
- [ ] Download: All Artists Songs
- [x] Download: Playlist


## Dependencies
### Termux Packages
```
pkg install ffmpeg
```

```
pkg install jq
```

```
pkg install termux-api
```

```
pkg install python
```

### Github Repository 
1. zotify
   ```bash
   python -m pip install git+https://zotify.xyz/zotify/zotify.git
   ```

### Apps
1. Termux
2. Termux: API (on fdroid)


## Developer:
Aditya Sharma ::: [Telegram](https://w0lfrm.t.me)
