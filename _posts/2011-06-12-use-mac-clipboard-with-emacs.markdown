---
layout: post
title: Use Mac Clipboard with Emacs
category: Text Editor
tags: [emacs, osx]
date: 2011-06-12 13:51:30.000000000 +08:00
---
If you run Emacs inside the terminal, you may want to copy the region to the clipboard. Unfortunately, cmd-c does not copy the region, it copy the mouse selection area instead. In this scenario, the *pbcopy* command line program can help you. You can define a function for copying region to clipboard as below:

    (defun copy-to-clipboard()
      (interactive)
      (let ((process-connection-type nil))
          (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
            (process-send-string proc (buffer-substring (region-beginning) (region-end)))
            (process-send-eof proc))))

Put the code above to your Emacs init file(.emacs), then you can copy the region to clipboard by <kbd>M-x copy-to-clipboard</kbd> every time you start Emacs.

