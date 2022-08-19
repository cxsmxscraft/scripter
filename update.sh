function update {
    echo "Updating..."
    OLD_PATH=$(pwd)
    cd ~/.scripter

    echo "Fetching all updates"
    git fetch

    echo "Applying latest changes"
    git pull

    # Restoring the old path
    cd "$OLD_PATH"
}