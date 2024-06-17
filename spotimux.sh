#!/bin/sh

#sudo apt update && sudo apt upgrade

cat << "EOF"

                 __  _                
  ___ ___  ___  / /_(_)_ _  __ ____ __
 (_-</ _ \/ _ \/ __/ /  ' \/ // /\ \ /
/___/ .__/\___/\__/_/_/_/_/\_,_//_\_\ 
   /_/                                 
  /_/                                              
     S P O T I F Y  D O W N L O A D E R
    <<< github ::: @adityash4rma >>>

EOF


####### Functions #######

function search_song () {
    local params=""
    _search_query=$(termux-dialog text -i "Enter Query: " -t "Search songs:" | jq '.text')
    local params="${params} -s ${_search_query} --username $1 --password $2"
    eval "zotify ${params}"
    exit
}

function download_song () {
    local params=""
    _download_query=$(termux-dialog text -i "Enter URL... " -t "Download: (track/album/playlist/episode/artist)" | jq '.text')
    local params="${params} -s ${_download_query}"
    eval "zotify ${params}"
    exit
}

#########################



use_default=$(termux-dialog confirm -t "Use Default Account?" | jq -r '.text')

if [ "$use_default" == "no" ]; then
    credentials=$(termux-dialog text -i "username:password" -t "Enter Spotify Username & Password:")
    newcreds=$(echo "$credentials" | jq -r '.text')
    if [ $(echo "$credentials" | jq -r '.code') != -2 ]; then
        username=$("$newcreds" | cut -d ":" -f 1)
        password=$("$newcreds" | cut -d ":" -f 2)
    else
        echo "Exited Script: Canceled operation"
        exit
    fi
elif [ "$use_default" == "yes" ]; then
    query=$(termux-dialog sheet -t Queries -v "Search,Download,Download: All Liked Songs,Download: All Songs from Followed artists" | jq -r ".text")

    if [ "$query" == "Search" ]; then
        search_song
    elif [ "$query" == "Download" ]; then
        download_song
    elif [ "$query" == "Download: All Liked Songs" ]; then
        $params+"-l"
    elif [ "$query" == "Download: All Songs from Followed artists" ]; then   
        $params+"-f"
    fi

    #_search=$(zotify -s )
    echo $username 
fi