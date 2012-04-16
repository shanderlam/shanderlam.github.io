---
layout: post
title: Border For TR Element
category: Web Standard
tags: [css]
date: 2012-04-16 21:00:00.000000000 +08:00
---
According to [CSS2](http://www.w3.org/TR/CSS2/tables.html#borders), **table** has two distinct models for setting borders. One is most suitable for so-called separated borders around individual cells, the other is suitable for borders that are continuous from one end of the table to the other. The property *border-collapse* selects the table's border model. Its value can be one of *collapse* | *separate* | *inherit*. The default value is *separate*. In this model, each cell has an individual border, and rows, columns, row groups, and column groups cannot have borders. So if you want your *tr* element has border, you must first set your table's *border-collapse* value to *collapse*. Note that in this model, the width of the table includes half the table border. Also, in this model, a table does not have padding (but does have margins).