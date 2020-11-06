A docker container optimized for unraid of Silicondust HDHomeRun DVR

<h1>Requirements</h1>


```yaml
version: "2.1"
services:
  dvr:
    container_name: HDHomeRunDVR
    image: greg2dot0/hdhomerundvr:latest
    network_mode: host
    environment:
    - PUID=99
    - PGID=100
    - UMASK_SET=000 #optional
    - TZ=America/New_York
    volumes:
      - /path/to/recordings:/dvrdata
    restart: unless-stopped
```

### docker cli