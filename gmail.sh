#!/bin/bash
# scan email for a youtube link (send via mobile share-to-email)
# then play it onscreen

username="username@gmail.com"
password="password"
echo
curl --silent -u $username:$password "https://mail.google.com/mail/feed/atom" |  grep -oPm1 "(?<=<summary>)[^<]+"  | xargs /home/pi/youtube.sh
#curl --silent -u $username:$password "https://mail.google.com/mail/feed/atom"
sleep 10
