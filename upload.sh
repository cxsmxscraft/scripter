source "./checker.sh"

function upload { 
    checker
    telegram "Sending all backups to the server... Yahoo!"

    echo Forcefully sending all updates
    git push origin --all --force
}