---
layout: post
title: !binary |-
  SFRNTOS4rSZsdDticiZndDvmoIfnrb7nmoRjbGVhcuWxnuaApw==
wordpress_id: 127
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9MTI3
date: 2010-05-20 15:08:28.000000000 +08:00
---
在<acronym title="HyperText Markup Language">HTML</acronym>中，对于一个浮动对象，默认情况下其随后的文本流会将其环绕。例如对于一个左浮动图片，&lt;br&gt;标签会导致浏览器停止其后跟随的文本流，并且在图片右边的空白处另起一行继续输出文本：
<pre>
&lt;img style="float:left;" src="http://blog.shanderlam.com/wp-content/uploads/2010/05/Lenka-Lenka.jpg" alt="Lenka" /&gt;
This is the first line.&lt;br /&gt;This is the second line.
</pre>
将显示为:
<div>
    <img style="float:left;" src="http://blog.shanderlam.com/wp-content/uploads/2010/05/Lenka-Lenka.jpg" alt="Lenka" />
    This is the first line.<br />This is the second line.
</div>
<br clear="all"/>
对于右浮动图片：
<pre>
&lt;img style="float:right;" src="http://blog.shanderlam.com/wp-content/uploads/2010/05/Lenka-Lenka.jpg" alt="Lenka" /&gt;
This is the first line.&lt;br /&gt;This is the second line.
</pre>
将显示为:
<div>
    <img style="float:right;" src="http://blog.shanderlam.com/wp-content/uploads/2010/05/Lenka-Lenka.jpg" alt="Lenka" />
    This is the first line.<br />This is the second line.
</div>
<br clear="all"/>
如果希望换行后的文本流在对象的底部显示，这时可以使用&lt;br&gt;元素的<a href="http://www.w3.org/TR/html401/present/graphics.html#adef-clear" target="_blank">clear</a>属性。这个属性有以下可能值：
<ul>
    <li><samp>none</samp>: 按正常情况换行，这也是&lt;br&gt;标签的默认值。</li>
    <li><samp>left</samp>: 新的一行开始于浮动对象的左手边下方的最近一行</li>
    <li><samp>right</samp>: 新的一行开始于浮动对象的右手边下方的最近一行</li>
    <li><samp>all</samp>: 新的一行开始于浮动对象两边下方的最近一行</li>
</ul>
以上浮动对象的边应该指的是上方的边，因此如果浮动对象是左浮动，而为&lt;br&gt;元素指定的clear属性为right的话，新的一行文本仍然会在图像的右边的空白处：
<pre>
&lt;img style="float:left;" src="http://blog.shanderlam.com/wp-content/uploads/2010/05/Lenka-Lenka.jpg" alt="Lenka" /&gt;
This is the first line.&lt;br clear="right"/&gt;This is the second line.
</pre>
将显示为:
<div>
    <img style="float:left;" src="http://blog.shanderlam.com/wp-content/uploads/2010/05/Lenka-Lenka.jpg" alt="Lenka" />
    This is the first line.<br clear="right" />This is the second line.
</div>
<br clear="all"/>
而这时如果为clear属性指定的值为left的话，由于图片的左边没有间隙，因此新的一行文本只能从图片的下方开始：
<pre>
&lt;img style="float:left;" src="http://blog.shanderlam.com/wp-content/uploads/2010/05/Lenka-Lenka.jpg" alt="Lenka" /&gt;
This is the first line.&lt;br clear="left" /&gt;This is the second line.
</pre>
将显示为:
<div>
    <img style="float:left;" src="http://blog.shanderlam.com/wp-content/uploads/2010/05/Lenka-Lenka.jpg" alt="Lenka" />
    This is the first line.<br clear="left"/>This is the second line.
</div>
