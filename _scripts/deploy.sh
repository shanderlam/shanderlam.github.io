#! /usr/bin/env sh
rsync -arvzP --delete --delete-excluded _site/ www@ln.shanderlam.com:/home/www/blog.shanderlam.com/
