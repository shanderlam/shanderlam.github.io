---
layout: post
title: Border For TR Element
category: Web Standard
tags: [css]
date: 2012-04-16 21:00:00.000000000 +08:00
---
According to [CSS2.1 Specification](http://www.w3.org/TR/CSS2/tables.html#borders), **table** has two distinct models for setting borders. One is most suitable for so-called separated borders around individual cells, the other is suitable for borders that are continuous from one end of the table to the other. The property *border-collapse* selects the table's border model. Its value can be one of *collapse* | *separate* | *inherit*. The default value is *separate*. In this model, each cell has an individual border, and rows, columns, row groups, and column groups cannot have borders. So if you want your *tr* element has border, you must first set your table's *border-collapse* value to *collapse*. In the collapsing border model, it is possible to specify borders that surround all or part of a cell, row, row group, column, and column group. Borders for HTML's "rules" attribute can be specified this way. But this model also has more complicated algorithms for determing table's width, and must consider border conflict. For more detail this mode, please read [The collapsing border model](http://www.w3.org/TR/CSS2/tables.html#collapsing-borders) section of CSS2.1 Specification.