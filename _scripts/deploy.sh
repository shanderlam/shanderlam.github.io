#! /usr/bin/env sh
rsync -arvzP --delete --delete-excluded ../_site/ root@fs.shanderlam.com:/home/www/blog.shanderlam.com/