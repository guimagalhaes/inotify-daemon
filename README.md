# inotify-daemon
A simple bash script to watch for new files on a target folder which runs as a daemon as early as possible in the boot process.

This is an example about how to create shell scripts as daemons.

Copy the inotify.service to /usr/lib/systemd/system and the inotify.sh to /usr/bin.
The service can be started with:

```
systemctl start inotify.service
systemctl enable inotify.service
```
