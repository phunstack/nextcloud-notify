echo -n "enter short message: "
read shortmessage
echo -n "enter long message: "
read longmessage
nextcloud.occ user:list | sed 's/.*- \(.*\):.*/\1/' | xargs -l -i nextcloud.occ notification:generate {} "$shortmessage" -l "$longmessage"
