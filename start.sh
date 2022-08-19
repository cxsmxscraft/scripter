source "./checker.sh"

SERVER_FILE=server.jar

function start {
    checker
    if [ -f "$SERVER_FILE" ]; then
        /usr/bin/java -Xmx1024M -Xms1024M -jar server.jar nogui
    else
        echo "Oops, there is no $FILE file to start the server."
        echo "Consider downloading one here: https://www.minecraft.net/en-us/download/server"
        echo "or run '${0} upgrade' to download the latest version of minecraft server file"
    fi
}