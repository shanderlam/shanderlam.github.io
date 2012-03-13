---
layout: post
title: !binary |-
  Q3VzdG9taXppbmcgZGlzcGxheSBvZiBSYWRpb0J1dHRvbkxpc3Q=
wordpress_id: 308
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9MzA4
date: 2011-02-08 12:27:31.000000000 +08:00
---
<p>
In CHtml::activeRadioButtonList function, there is a parameter named $htmlOptions can use for customizing display of RadioButtonList. The following special options are recognized:
<ul>
<li>template: string, specifies how each radio button is rendered. Defaults to "{input} {label}", where "{input}" will be replaced by the generated radio button input tag while "{label}" will be replaced by the corresponding radio button label.</li>
<li>separator: string, specifies the string that separates the generated radio buttons.</li>
<li>encode: boolean, specifies whether to encode HTML-encode tag attributes and values. Defaults to true. This option has been available since version 1.0.5.</li>
<li>labelOptions: array, addtional HTML options. The options will be applied to each radio button label.
</ul>
</p>
