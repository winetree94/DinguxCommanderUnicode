DinguxCommander
===============

DinguxCommander is a two-pane file manager in the style of Norton Commander.

Original site: http://beyondds.free.fr/index.php?Dingoo-dinguxcommander

This repository contains customizations to make it integrate better with OpenDingux.

# Development environment installation for linux
### Install toolchain

```bash
$ sudo -s
$ curl http://www.gcw-zero.com/files/opendingux-gcw0-toolchain.2014-08-20.tar.bz2 --output /tmp/toolchain.tar.bz2
$ tar jxvf /tmp/toolchain.tar.bz2 -C /opt
```

### Configure environment variables

```bash
# for bash
$ echo 'export PATH="/opt/gcw0-toolchain/usr/bin:$PATH"' >> ~/.bash_profile
$ source ~/.bash_profile

# for zsh
$ echo 'export PATH="/opt/gcw0-toolchain/usr/bin:$PATH"' >> ~/.zshrc
$ source ~/.zshrc
```

# Build

### build source

```bash
# device config
$ export CONFIG=opendingux-gcw0
$ make clean
$ make
```

### build opk

```
$ ./make_opk.sh
```

if you have a problem to make opk file, execute below command to have right permission
```
$ chmod +x ./make_opk.sh
```