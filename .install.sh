#/bin/bash

cd `dirname $0`

function do_sync() {
    rsync --exclude ".git/" \
        --exclude ".install.sh" \
        --exclude "README.md" \
        -avh --no-perms ./ ~/
    source ~/.bashrc
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    do_sync
else
    echo "starting..."
    echo "This may overwrite existing files in your home directory."
    read -p "Are you sure?(y/n)" -n 1
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        do_sync
    fi
fi
echo "finished..."

unset do_sync
