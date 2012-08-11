---
layout: post
title: Handle responseXML As an Element
category: Web Development
tags: [javascript]
date: 2011-03-25 13:29:28.000000000 +08:00
---
*onSuccess(responseText, responseXML)* function in the Request options receive
 an XML object *responseXML*( if response is has Content-Type: text/xml header
 ), this object has a Property *responseXML.documentElement*, it is an Element
 object and you can use all methods of Element to manipulate on it.

**Note**: this is not available under Microsoft Internet Explorer.
