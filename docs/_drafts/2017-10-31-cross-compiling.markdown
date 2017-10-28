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

Add these lines to `~/.bashrc`
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
create file in /usr/local/bin/clang-3.9-arm
with:

create file in /usr/local/bin/clang-3.9-arm
```
#!/bin/bash
clang-3.9 $@
```
create file in /usr/local/bin/clang++-3.9-arm
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
clang-3.9-arm test.c


on the host: 

install clang-3.9 with macports:
```
sudo port install clang++-3.9
```
Create files:
/usr/local/bin/clang-3.9-arm
with:
```
#!/bin/bash
clang-mp-3.9 -target armv7l-unknown-linux-gnueabihf --sysroot ~/arm $@
```
and /usr/local/bin/clang++-3.9-arm
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

Install OS X Fuse

mount the remote filesytem:
```
mkdir -p ~/arm
sshfs root@192.168.7.2: ~/arm
```

Start the distccd on the host:
```
distccd --verbose --no-detach --daemon --allow 192.168.7.2 --log-level debug --log-file ~/distccd.log
```

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
on the client, inspect the stderr returned by the host
```
cat /tmp/distcc/*txt
```
