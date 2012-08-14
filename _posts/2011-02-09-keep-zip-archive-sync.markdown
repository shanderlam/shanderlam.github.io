---
layout: post
title: Keep Zip Archive Sync
category: System Administrator
tags: [zip]
date: 2011-02-09 15:29:45.000000000 +08:00
---
Be default, zip will replace identically named entries in the existing zip
archive (matching the relative names as stored in the archive) or add entries
for new names. If you want to keep the zip archive sync, you can use the File
Sync option(-FS). The new File Sync option is also considered a new mode, though
it is similar to update.  This mode synchronizes the archive with the files on
the OS, only replacing files in the archive if the file time or size of the OS
file is different, adding new files, and deleting entries from the archive where
there is no matching file.  As this mode can delete entries from the archive,
consider making a backup copy of the archive.
