<div align="center">  <h1 style="font-size:30px" >ny-cli <br />
<img src="src/ny-cli.png" width="48px" height="48px" > </h1>  </div>
<p align="center">A  tool which search magnet links and stream it with @meteor314/stream from nyaa.si
</p>
<img src="src/ny-cli.gif" width='100%'>

### How does this work?
This is a shell script. It scape Nyaa and get the magnet link.
After this it use <b><i>peerlix </i></b> to stream the video from magnet link.
For scraping script use simple gnu utils like sed, awk, paste, cut.

## Requirements

You need <b style='color:orange'>NPM</b>. You can follow this tutorial if you don't have node alreday installed.
* [node](https://www.geeksforgeeks.org/installation-of-node-js-on-linux/) - Installation of Node.js on Linux.
* If you are using <b style='color:orange'> Windows or Mac OS</b>, you can directly download from [nodejs.org/](https://nodejs.org/en/download/) here.
* [stream](https://github.com/meteor314/stream) - A tool to stream torrent. 
```sh 
npm install @meteor314/stream -g 
```
You also need to install [mpv](https://mpv.io/). You can install it on Arch
```sh
sudo pacman -S mpv
```
or in debian
```sh
sudo apt-get install mpv
```

## Installation
## Linux
### cURL
cURL **ny-cli** to your **$PATH** and give execute permissions.

```sh
cd /tmp
sudo curl -sL "https://raw.githubusercontent.com/meteor314/ny-cli/master/ny-cli" -o /usr/local/bin/ny-cli
sudo chmod +x /usr/local/bin/ny-cli && sudo npm install @meteor314/stream -g
```

## Mac OS
```sh
git clone "https://github.com/meteor314/ny-cli.git" && cd ./ny-cli
cp ./ny-cli "$(brew --prefix)"/bin 
cd .. && rm -rf ./ny-cli
```
## Android 

Install [termux](https://termux.com/) and Install [mpv-android](https://github.com/mpv-android/mpv-android/releases)
And you can paste this command on termianal,Before continue, make sure that termux is up to date with this command. Termux installation via play store does not work, because the software no longer receives updates in this platform.


 DON'T FORGOT TO GIVE TERMUX FILE MANAGE ACCESS.


```sh
pkg upgrade && pkg update
``` 
And just copy and paste theses commands:

```sh
pkg i nodejs 
```
```sh
npm i @meteor314/stream -g 
```
```sh
pkg i fzf 
```
```sh
pkg i git
```
```sh
git clone https://github.com/meteor314/ny-cli && cd ny-cli
```
```sh
cp ny-cli $PREFIX/bin/ny-cli
```
```sh
echo 'am start --user 0 -a android.intent.action.VIEW -d "$2" -n is.xyz.mpv/.MPVActivity' > $PREFIX/bin/mpv
chmod +x $PREFIX/bin/mpv
```

## Windows
You need scoop to install on your.<b><i> </i> </b>you can find a complete documentation [here.](https://scoop.sh/)
The easiest way to install it is to open powershell (as a simple user) paste this.

```sh
Set-ExecutionPolicy RemoteSigned -scope CurrentUser
```
```sh
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
```
```sh
scoop bucket add extras
```

```sh
git clone https://github.com/meteor314/ny-cli.git 
```

```sh
cd ny-cli
```

```sh
scoop install ny-cli
```
```sh
npm install @meteor314/stream -g
```


# How to use ?
Juste write 
```sh
ny-cli 
# ny-cli -h (for options)
```
- To update, just do 
```sh
ny-cli --update
```

- To uninstall, simply remove `ny-cli` from your **$PATH**, for example 
```sh
 sudo rm -rf /usr/local/bin/ny-cli
```
## Issue <hr>
If it's not working for the first time, please restart terminal or maybe your system.

Sometime you can get this type of error : 
```sh
stream: unable to open image 'magnet:?xt=urn:btih:fba17d3e02fe94df607b823afe822bd30efd203f': No such file or directory @ error/blob.c/OpenBlob/3533.
stream: no decode delegate for this image format `' @ error/constitute.c/ReadImage/738.
stream: unable to open image '--path': No such file or directory @ error/blob.c/OpenBlob/3533.
stream: unable to open image '--path': No such file or directory @ error/blob.c/OpenBlob/3533.
stream: no decode delegate for this image format `' @ error/constitute.c/ReadImage/738.
stream: no decode delegate for this image format `' @ error/constitute.c/ReadImage/738.
stream: unrecognized option `-a' @ error/stream.c/StreamImageCommand/306.
```
This error usually comes after an update. Just reinstall stream
with this command in the terminal:
```js
  npm i @meteor314/stream -g
  ```


## TO DO / WISH LIST

- [✓] Compatibilty with windows.
- [✓] Download torrent in a specific folder (with ny-cli -d)
- [] Send notification after download ( notify-send(?) ) for W10, Mac & Linux.
- [] Compatibility with mac os.
- [] Fix bugs with git bash in W10
- [✓] Make a history of all torrent in ./.cache/history.ini
- [] Detect files formats, for example, if it is a zip file or .exe just download it, don't try to open with mpv
- [] add vlc player.
- [✓] Create a custom node webserver based on webtorrent for a better compatibility.

## License
This project is licensed under [Apache](https://raw.githubusercontent.com/meteor314/ny-cli/master/LICENSE).

<i>Please read [Disclaimer.md](https://github.com/meteor314/ny-cli/blob/master/Disclaimer.md) before any usage. Happy torrent :) <i>

<h3 style='color:pink'>
Just keep in mind that :
"Video playing time may vary depending on torrent availability, or may not play if torrent is old and there are no seeders."
</h3>

#### If you encounter a bug, don't hesitate to open an issue, and any help will be welcome ^_^
<img src="https://imgur.com/hU033Ln.png"/>

