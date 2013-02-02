---
layout: post
title: Eval Do What I Mean
category: Text Editor
tags: [emacs, elisp]
date: 2013-02-02 23:00:00.000000000 +08:00
---
In Emacs, many commands wise enough to work on the region if in Transient Mark
mode and the mark is active.  This is very convenient, likes Emacs do what I
mean (*dwim*).  Therefore some Emacs commands has this feature named end with
*dwim*, like \`comment-dwim'.  But unfortunately, not every commands has this
feature.  But as you known, Emacs is very extensible, you can implement this
feature to exist commands yourself.  As an example, I implement this feature to
\`eval-last-sexp' command by define new function named \`eval-dwim'.

    (defun eval-dwim (arg)
      "Call eval command you want (Do What I Mean).
    If the region is active and `transient-mark-mode' is on, call
    `eval-region'. Else, call `eval-last-sexp'."
      (interactive "P")
      (if (and transient-mark-mode mark-active)
    	  (eval-region (region-beginning) (region-end))
    	(eval-last-sexp arg)))

Then you can bind key \`C-x C-e' to \`eval-dwim' command replace with default
\`eval-last-sexp'.  In most case, this will make you happier.

I also create a [gist](https://gist.github.com/4697901) about this in github.
