#! /usr/bin/env sh
rsync -arvzP --delete --exclude-from=../.gitignore --delete-excluded ../_site/ root@fs.shanderlam.com:/home/www/blog.shanderlam.com/