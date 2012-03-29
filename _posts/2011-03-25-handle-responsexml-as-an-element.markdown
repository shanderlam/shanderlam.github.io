---
layout: post
title: Handle responseXML As an Element
category: Web Development
tags: [javascript]
date: 2011-03-25 13:29:28.000000000 +08:00
---
<p><code>onSuccess(<var>responseText</var>, <var>responseXML</var>)</code> function in the Request options receive an XML object <var>responseXML</var>( if response is has Content-Type: text/xml header ), this object has a Property <var>responseXML</var>.documentElement, it is an Element object and you can use all methods of Element to manipulate on it.</p>

**Note**: this is not available under Microsoft Internet Explorer.
