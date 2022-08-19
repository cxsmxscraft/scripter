source "./checker.sh"

function backup { 
    checker
    telegram "People, backup is being started! Please, be patient..."

    echo Sending signals to the server
    rcon "save-off"
    rcon "save-all"

    echo "Stopping minecraft server"
    sudo systemctl stop minecraft

    echo "Waiting for minecraft service to die"
    sleep 10

    # Uploading Git Changes
    if [ "$(git status --porcelain)" ]; then
        echo "There are changes in the data folder. Committing them..."
        git add .
        git commit -m "Sync from local to remote $RANDOM"
    fi

    echo "Starting the server"
    sudo systemctl start minecraft

    echo Waiting for the server to startup
    sleep 60

    echo Sending save stats signal
    rcon "save-on"
}