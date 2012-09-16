#! /usr/bin/env sh
rsync -arvzP --delete --delete-excluded _site/ www@fs.shanderlam.com:/home/www/blog.shanderlam.com/
