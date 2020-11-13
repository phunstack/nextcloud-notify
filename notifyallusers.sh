echo -n "enter message: "
read message
nextcloud.occ user:list | sed 's/.*- \(.*\):.*/\1/' | xargs -l -i nextcloud.occ notification:generate {} $message