function checker {
    # Check if server.properties or server.jar exists in the current directory
    if [ ! -f server.properties ] && [ ! -f server.jar ]; then
        echo "This is not valid minecraft server directory. Try changing current working directory to your server..." 1>&2
        exit 1
    fi
}