function checker {
    # Check if server.properties is present
    if [ ! -f ./server.properties ]; then
        echo "This is not valid minecraft server directory. Try changing current working directory to your server..." 1>&2
        exit 1
    fi
}