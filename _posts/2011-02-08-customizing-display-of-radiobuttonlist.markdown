---
layout: post
title: Customizing Display of RadioButtonList
category: Programming
tags: [yii, php]
date: 2011-02-08 12:27:31.000000000 +08:00
---
In *CHtml::activeRadioButtonList* function, there is a parameter named
*$htmlOptions* can use for customizing display of RadioButtonList. The following
special options are recognized:

* template: string, specifies how each radio button is rendered. Defaults to
  "{input} {label}", where "{input}" will be replaced by the generated radio
  button input tag while "{label}" will be replaced by the corresponding radio
  button label.
* separator: string, specifies the string that separates the generated radio
  buttons.
* encode: boolean, specifies whether to encode HTML-encode tag attributes and
values. Defaults to true. This option has been available since version 1.0.5.
* labelOptions: array, addtional HTML options. The options will be applied to each
radio button label.
