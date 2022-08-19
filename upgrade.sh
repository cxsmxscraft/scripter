SERVER_FILE=server.jar

function upgrade {
    if [[ -f $SERVER_FILE ]]; then
        rm -rf $SERVER_FILE
    fi

    echo "Starting to download the latest jar file"
    curl https://pwease.uwussi.moe/latest --output $SERVER_FILE
}