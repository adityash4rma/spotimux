# spotimux
Spotify Downloader on Termux. It uses zotify under the sleeve to do the magic! Be Sure to install the below dependencies and apps.

## TODO [ v0.2 alpha ]
- [x] Search songs
- [x] Download
- [ ] Download: All Liked Songs
- [ ] Download: All Artists Songs
- [x] Download: Playlist


# Installation & Usage :
1. Download the bash script and paste it into a directory accessible by termux.
2. Update & Upgrade Packages.
   ```bash
   pkg update && pkg upgrade
   ```

## Installing Dependencies
### Apps
1. Termux => https://f-droid.org/packages/com.termux/
2. Termux: API => https://f-droid.org/packages/com.termux.api/

1. ffmpeg
   ```bash
   pkg install ffmpeg
   ```
2. jq (JSON parser)
   ```bash
   pkg install jq
   ```

3. termux API Wrapper
   ```bash
   pkg install termux-api
   ```

4. Python 3.x
   ```bash
   pkg install python
   ```

5. Git
   ```bash
   pkg install git
   ```

6. zotify
   ```bash
   python -m pip install git+https://zotify.xyz/zotify/zotify.git
   ```
7. Run the script by
   ```bash
   bash spotimux.sh
   ```


## Developer:
Aditya Sharma ::: [Telegram](https://w0lfrm.t.me)
