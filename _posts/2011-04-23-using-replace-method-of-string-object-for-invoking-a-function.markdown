---
layout: post
title: Using Replace Method of String Object for Invoking a function
category: Programming
tags: [javascript]
date: 2011-04-23 20:33:50.000000000 +08:00
---
In JavaScript, *String* Object has a *replace* method, if the second parameter
given to the method is a function, this function will be invoke after match
peformed. The function's result (return value) will be used as the replacement
string.  Note that the function will be invoked multiple times for each full
match to be replaced if the regular expression in the first parameter is global.

The arguments to the function are as follows:

|Possible name|Supplied value|
|-------------|--------------|
|<code>str</code>|The matched substring. (Corresponds to $&amp; above.)|
|<code>p1, p2, ...</code>|The <em>n</em>th parenthesized submatch string, provided the first argument to <code>replace</code> was a <code>RegExp</code> object. (Correspond to $1, $2, etc. above.)|
|<code>offset</code>|The offset of the matched substring within the total string being examined. (For example, if the total string was <code>&quot;abcd&quot;</code>, and the matched substring was <code>&quot;bc&quot;</code>, then this argument will be <code>1</code>.)|
|<code>s</code>|The total string being examined.|

Below is a example:

    var image = new Object();
    var regExp = /<img\s*src="([^"]+)"\s*alt="([^"]+)"\s*\/>/;
    var string = '<img src="http://www.shanderlam.com/favicon.ico" alt="Shander Lam" />';
    string.replace(regExp, replacer);
    function replacer(img, src, alt) {
        image = {src: src, alt: alt};
    }

After *replace* method invoked, the <var>image</var> Object have two property,
one is *src*, value is *"http://www.shanderlam.com/favicon.ico"*, and another is
*alt*, value is *"Shander Lam"*. Because the *replace* method doesn't change the
value of original string, so use the code above same as first extract *src* and
*alt* attribute from <var>string</var>, then use them as parameters for invoking
*replacer* function.

