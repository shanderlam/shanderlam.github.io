---
layout: post
title: Synchronous Files with Rsync
category: System Administrator
tags: [rsync]
date: 2011-04-22 23:22:44.000000000 +08:00
---
With rsync, you can synchronous your files beween local machine and remote host,
or files in different directories.

Simply,  just give source and destination options to rsync command.

    rsync *.c foo:src/

The command above transfer all files matching the pattern \*.c from current
directory to the directory src on the mathine foo. If any of the files already
exist on the remote system then the rsync remote-update protocol is used to
update the file by sending only the differences.

Below are some useful options.


-v, --verbose
: This option increases the amount of information you are given during the
transfer.

-r, --recursive
: This tells rsync to copy directories recursively.

-u, --update
: This forces rsync to skip any files which exist on the destination and have a
modified time that is newer than the source file.

--delete
: This tells rsync to delete extraneous files from the receiving side (ones that
aren't on the sending side), but only for the directories that are being
synchronized.

--partial
: By default, rsync will delete any partially transferred file if the transfer
is interrupted. In some circumstances it is more desirable to keep partially
transferred files.  Using the --partial option tells rsync to keep the partial
file which should make a subsequent transfer of the rest of the file much
faster.

--progress
:This option tells rsync to print information showing the progress of the
transfer. This gives a bored user something to watch.  Implies --verbose if it
wasn't already specified.

-P
: The -P option is equivalent to --partial --progress.  Its purpose is to make
it much easier to specify these two options for a long transfer that may be
interrupted.

**Note:** The description of the options above is not the complete
  description. You can find the complete description under rsync man page.

Usually, rsync work on one-way sync, but you can simply run rsync twice for
two-way sync, for example:

    rsync -vaurP ./ remote_server:destination_dir/
    rsync -vaurP remote_server:destination_dir/ ./
