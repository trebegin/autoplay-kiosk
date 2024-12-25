# autoplay-kiosk
Scripts to automatically play videos on a Raspberry Pi

To start automatically, download script and run `crontab -e`, choose editor then add following line:
```
@reboot /home/$USER/path/to/script/start-video.sh
```

