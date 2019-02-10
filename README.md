# IoT Tools

## Essentials

### Raspberry Pi config tool

```bash
$> sudo raspi-config
```

- Enable SSH
- Enable VNC
- Enable WIFI
- Enable i2c

### Renaming host

```bash
$> sudo nano /etc/hostname
```

## Basic setup

```bash
$> curl -sL https://raw.githubusercontent.com/vforge/iott/master/scripts/setup.sh | bash
```

### Installing node

```bash
$> curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
```

```bash
$> sudo apt install -y nodejs
```
