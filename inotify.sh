#!/bin/bash


TARGET_PATH=/tmp

echo "Starting service"

systemd-notify --ready --status="Watching target folder"
inotifywait -m ${TARGET_PATH} -e create -e moved_to |
    while read dir action file; do
        echo "The file '${file}' appeared in directory '$dir' via '$action'"
        ls -Z ${TARGET_PATH}/${file}
    done

echo "Exiting service"
exit 0


