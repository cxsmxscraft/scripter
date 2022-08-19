FILE=server.jar

function start {
    if [ -f "$FILE" ]; then
        /usr/bin/java -Xmx1024M -Xms1024M -jar server.jar nogui
    else
        echo "Oops, there is no $FILE file to start the server."
        echo "Consider downloading one here: https://www.minecraft.net/en-us/download/server"
    fi
}