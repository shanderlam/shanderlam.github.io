---
layout: post
title: Tips for Name Binding in Python
category: Programming
tags: [python]
date: 2011-04-23 13:45:31.000000000 +08:00
---
<p><cite>Names refer to objects. Names are introduced by name binding
operations. Each occurrence of a name in the program text refers to the binding
of that name established in the innermost function block containing the
use.</cite></p>

<p><cite>A scope defines the visibility of a name within a block. If a local
variable is defined in a block, its scope includes that block. If the definition
occurs in a function block, the scope extends to any blocks contained within the
defining one, unless a contained block introduces a different binding for the
name.</cite></p>

So, in the codes below, *get_a* function does not define a name <var>a</var>, it
will refer to the global definition of <var>a</var>:

    >>> a = 1
    >>> def get_a():
    ...      return a
    ...
    >>> get_a()
    1

<p><cite>If a name binding operation occurs anywhere within a code block, all
uses of the name within the block are treated as references to the current
block.This can lead to errors when a name is used within a block before it is
bound. This rule is subtle. Python lacks declarations and allows name binding
operations to occur anywhere within a code block. The local variables of a code
block can be determined by scanning the entire text of the block for name
binding operations.</cite></p>

So, if you define a name <var>a</var> in the *get_a* function, changes apply to
<var>a</var> on affect in the local value inside *get_a* function, the global
<var>a</var> doesn't changed:

    >>> a = 1
    >>> def get_a():
    ...     a = 2
    ...     return a
    ...
    >>> get_a()
    2
    >>> a
    1

And in this scenarios, you can't use <var>a</var> before it is bound:

    >>> a = 1
    >>> def get_a():
    ...     print a
    ...     a = 2
    ...
    >>> get_a()
    Traceback (most recent call last):
    File "&lt;stdin&gt;", line 1, in &lt;module&gt;
    File "&lt;stdin&gt;", line 2, in get_a
    UnboundLocalError: local variable 'a' referenced before assignment

<p><cite>If the global statement occurs within a block, all uses of the name
specified in the statement refer to the binding of that name in the top-level
namespace.</cite></p>

So, if you use global statement in *get_a* with <var>a</var>, you will refer to
the global <var>a</var> in the function:

    >>> a = 1
    >>> def get_a():
    ...     global a
    ...     a = 2
    ...     return a
    ...
    >>> get_a()
    2
    >>> a
    2
