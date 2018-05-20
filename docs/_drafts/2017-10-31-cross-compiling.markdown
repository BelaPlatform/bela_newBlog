---
layout: post
title: "`distcc` distributed compiler"
date: 2017-10-15
categories:
  - "Tutorials"
  - "Software"
description: "Hints on getting faster compile times without a cross-compiler"
image: bela-and-supercollider-live-coding-sensors/alo-allik.jpg
author: giulio
---

Install `distcc` on Bela and on the host. `distcc` releases: https://github.com/distcc/distcc/releases

When installing `distcc`, you may need to configure with `./configure --without-libiberty --disable-Werror`. See https://github.com/marksatt/DistCode/issues/13.

Add these lines to `~/.bashrc` on Bela
```
export DISTCC_HOSTS=192.168.7.1
export DISTCC_VERBOSE=1
export DISTCC_FALLBACK=1 # In principle this should be 0, but on my system it does not work as expected
export DISTCC_SAVE_TEMPS=1
export DISTCC_BACKOFF_PERIOD=0
export TMPDIR=/tmp/distcc
mkdir -p /tmp/distcc
```
and source it to apply the changes:
```
source ~/.bashrc
```
create file in `/usr/local/bin/clang-3.9-arm`
with:

create file in `/usr/local/bin/clang-3.9-arm`
```
#!/bin/bash
clang-3.9 $@
```
create file in `/usr/local/bin/clang++-3.9-arm`
```
#!/bin/bash
clang++-3.9 $@ -stdlib=libstdc++
```
and make them executable:
```
chmod +x /usr/local/bin/clang-3.9-arm
chmod +x /usr/local/bin/clang++-3.9-arm
```

In practice this will do everything for you:
```
printf '#!/bin/bash\nclang-3.9 $@' > /usr/local/bin/clang-3.9-arm
printf '#!/bin/bash\nclang++-3.9 $@' > /usr/local/bin/clang++-3.9-arm
chmod +x /usr/local/bin/clang-3.9-arm
chmod +x /usr/local/bin/clang++-3.9-arm
```

You should now be able to compile a simple file:
```
clang-3.9-arm test.c
```

On the host: 

install clang-3.9 with macports:
```
sudo port install clang++-3.9
```
^ returns `Error: Port clang++-3.9 not found`. Try from here instead: http://releases.llvm.org/download.html#3.9.0

Create files: `/usr/local/bin/clang-3.9-arm`
with:
```
#!/bin/bash
clang-mp-3.9 -target armv7l-unknown-linux-gnueabihf --sysroot ~/arm $@
```
and `/usr/local/bin/clang++-3.9-arm`
with:
```
#!/bin/bash
clang++-mp-3.9 -target armv7l-unknown-linux-gnueabihf --sysroot ~/arm $@
```
and make both of them executable:
```
sudo chmod +x /usr/local/bin/clang-3.9-arm
sudo chmod +x /usr/local/bin/clang++-3.9-arm
```

Notes: 
- The `mp` stands for Mac Ports, so if Clang was not installed via MacPorts (and likely it wasn't), then `mp` should be removed from the above.
- Default Apple Clang will not suffice. Download from http://releases.llvm.org/download.html#3.9.0

Install OS X Fuse: https://osxfuse.github.io/

mount the remote filesytem:
```
mkdir -p ~/arm
sshfs root@192.168.7.2: ~/arm
```

Start the `distccd` on the host:
```
distccd --verbose --no-detach --daemon --allow 192.168.7.2 --log-level debug --log-file ~/distccd.log
```

`--make-me-a-botnet` may also be required. It seems that `distcc` thinks that user installed software on a Mac should be in `/usr` instead of `/usr/local`, but this changed a few macOS' ago.

You should now be able to compile a test program:

```
distcc clang-3.9-arm ~/Bela/resources/network/udpclient.c
```

Monitoring:
on the host
To see the logs:
```
tail -f ~/distccd.log
```
To make sure the process is actually called:
```
watch -n 0.4 bash -c "ps aux | grep clang-3.9-arm"
```
```
watch -n 0.4 bash -c "ps aux | grep clang++-3.9-arm"
```

on the client (Bela), inspect the `stderr` returned by the host
```
cat /tmp/distcc/*txt
```
