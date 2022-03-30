# ny-cli

<h1 align="center">ny-cli</h1>
<p align="center">A  tool which search magnet links and stream it with peerflix from nyaa.si
</p>

### How does this work?
This is a shell script. It scape Nyaa and get the magnet link.
After this it use <b><i>peerlix </i></b> to stream the video from magnet link.
For scraping script use simple gnu utils like sed, awk, paste, cut.

## Requirements

You need <b>NPM</b>. You can follow this tutorial if you don't have node alreday installed.
* [node](https://www.geeksforgeeks.org/installation-of-node-js-on-linux/) - Installation of Node.js on Linux 
* [peerflix](https://github.com/mafintosh/peerflix) - A tool to stream torrent. 
```sh 
sudo npm install peerflix -g
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

### cURL
cURL **ny-cli** to your **$PATH** and give execute permissions.

```sh
sudo curl -sL "https://raw.githubusercontent.com/meteor314/ny-cli/master/ny-cli" -o /usr/local/bin/ny-cli
sudo chmod +x /usr/local/bin/ny-cli
```
# How to use ?
Juste write 
```sh
ny-cli
# ny-cli -h (for options)
```
- To update, just do `curl` again, no need to `chmod` anymore.
- To uninstall, simply remove `ny-cli` from your **$PATH**, for example 
```
sh sudo rm -f /usr/local/bin/ny-cli
```

## License
This project is licensed under [Apache](https://raw.githubusercontent.com/Illumina/licenses/master/gpl-3.0.txt).

<i>Please read Disclaimer.md before any usage. Happy torrent :) <i>


<br >
<img src="https://imgur.com/hU033Ln.png" >

