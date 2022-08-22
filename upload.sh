function upload { 
    telegram "Sending all backups to the server... Yahoo!"

    echo Forcefully sending all updates
    git push origin --all --force
}