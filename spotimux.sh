#!/bin/sh

#sudo apt update && sudo apt upgrade

cat << "EOF"

                 __  _                
  ___ ___  ___  / /_(_)_ _  __ ____ __
 (_-</ _ \/ _ \/ __/ /  ' \/ // /\ \ /
/___/ .__/\___/\__/_/_/_/_/\_,_//_\_\ 
   /_/                                 
  /_/                                              
     Z O T I F Y  O N  T E R M U X
    <<< github ::: @adityash4rma >>>

EOF

params=""
use_newacc=$(termux-dialog confirm -t "Use Default Account?" | jq -r '.text')
echo hahah

if [ "$use_newacc" == "no" ]; then
    credentials=$(termux-dialog text -i "username:password" -t "Enter Spotify Username & Password:" | jq -r '.text')
    echo "$credentials"
    username=$("$credentials" | cut -d ":" -f 1)
    password=$("$credentials" | cut -d ":" -f 2)
else
    query=$(termux-dialog sheet -t Queries -v "Search,Download,Download: All Liked Songs,Download: All Songs from Followed artists" | jq -r ".text")

    echo $query

    if [ "$query" == "Search" ]; then
        _search_query=$(termux-dialog text -i "Enter Query: " -t "Search songs..." | jq '.text')
        params="${params} -s ${_search_query}"
    elif [ "$query" == "Download" ]; then
        $params+"-d"
    elif [ "$query" == "Download: All Liked Songs" ]; then
        $params+"-l"
    elif [ "$query" == "Download: All Songs from Followed artists" ]; then   
        $params+"-f"
    fi

    eval "zotify ${params}"

    #_search=$(zotify -s )
    echo $username 
fi