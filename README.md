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
sudo curl -sL "https://raw.githubusercontent.com/meteor314/ny-cli/master/ny-cli" -o /usr/local/bin/ny-cli
sudo chmod +x /usr/local/bin/ny-cli && sudo npm install @meteor314/stream -g
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
If you are using it, for the first time, you can get this error, I don't know why, but just retry 2 3 times with diffrent link and it should work. 
```sh
meteor@meteor-VirtualBox:~/Desktop/vwt.cad-viewer$ ny-cli 
Search torrent :  naruto
 Searching for 'naruto'...
Link find : https://nyaa.si/?f=0&c=0_0&q=naruto&s=seeders&o=desc
1509859
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  5066    0  5066    0     0  22122      0 --:--:-- --:--:-- --:--:-- 22026
Usage: stream magnet-link-or-torrent [options]

Options:
  -c, --connections  max connected peers                            [default: 100]
  -p, --port         change the http port                           [default: 8888]
  -i, --index        changed streamed file (index)                
  -l, --list         list available files with corresponding index
  -t, --subtitles    load subtitles file                          
  -q, --quiet        be quiet                                     
  -v, --vlc          autoplay in vlc*                             
  -s, --airplay      autoplay via AirPlay                         
  -m, --mplayer      autoplay in mplayer*                         
  -g, --smplayer     autoplay in smplayer*                        
  --mpchc            autoplay in MPC-HC player*                   
  --potplayer        autoplay in Potplayer*                       
  -k, --mpv          autoplay in mpv*                             
  -o, --omx          autoplay in omx**                            
  -w, --webplay      autoplay in webplay                          
  -j, --jack         autoplay in omx** using the audio jack       
  -f, --path         change buffer file path                      
  -b, --blocklist    use the specified blocklist                  
  -n, --no-quit      do not quit stream on vlc exit             
  -a, --all          select all files in the torrent              
  -r, --remove       remove files on exit                         
  -h, --hostname     host name or IP to bind the server to        
  -e, --peer         add peer by ip:port                          
  -x, --peer-port    set peer listening port                      
  -d, --not-on-top   do not float video on top                    
  --on-downloaded    script to call when file is 100% downloaded  
  --on-listening     script to call when server goes live         
  --version          prints current version                       

Options passed after -- will be passed to your player

  "stream magnet-link --vlc -- --fullscreen" will pass --fullscreen to vlc

* Autoplay can take several seconds to start since it needs to wait for the first piece
** OMX player is the default Raspbian video player

[a] Search another torrent
[q] Exit


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

