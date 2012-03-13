---
layout: post
title: !binary |-
  SFRNTOS4reWbvueJh+eahOWuouaIt+err+aYoOWwhA==
wordpress_id: 155
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9MTU1
date: 2010-05-22 22:14:30.000000000 +08:00
---
图片的客户端映射可以使图片的不同区域链接到不同的目标。可以通过结合使用&lt;img&gt;元素的usemap属性和&lt;map&gt;元素来达到这个效果，下面是一个示例：
<pre>
&lt;img src="http://blog.shanderlam.com/wp-content/uploads/2010/05/googleandmicrosoft.jpg" alt="google and microsoft" usemap="#map1" /&gt;
&lt;map name="map1"&gt;
    &lt;area coords="0, 0, 169, 67" href="http://www.google.com" title="Google official website" /&gt;
    &lt;area coords="0, 68, 169, 135" href="http://www.microsoft.com"  title="Microsoft official website" /&gt;
&lt;/map&gt;
</pre>
其效果如下：
<div>
    <img src="http://blog.shanderlam.com/wp-content/uploads/2010/05/googleandmicrosoft.jpg" alt="google and microsoft" usemap="#map1" />
    <map name="map1">
        <area coords="0, 0, 169, 67" shape="rect" href="http://www.google.com" title="Google official website" />
        <area coords="0, 68, 169, 135" shape="rect" href="http://www.microsoft.com" title="Microsoft official website" />
    </map>
</div>
其中&lt;img&gt;元素的usemap属性用来指定图片使用客户端映射，该属性的值为"#"加上相应的&lt;map&gt;元素的name属性值。&lt;map&gt;元素通过包含在其中的一系列&lt;area&gt;元素指定了图像的不同区域链接到不同的目标。
在&lt;area&gt;元素中,shape属性指定了区域的形状，其取值为以下4种:
<ul>
    <li><samp>default</samp>: 指定了整个图片的区域。</li>
    <li><samp>rect</samp>: 定义了一个矩形区域。</li>
    <li><samp>circle</samp>: 定义了一个圆形区域。</li>
    <li><samp>poly</samp>: 定义了一个多边形区域。</li>
</ul>
根据不同的shape取值，coords属性的值代表了不同的意思，分别如下：
<ul>
    <li><samp>rect</samp>: 左上角x坐标，左上角y坐标，右下角x坐标，右下角y坐标。</li>
    <li><samp>circle</samp>: 圆心x坐标，圆心y坐标，半径。半径的单位可以是px，也可以是百分比。</li>
    <li><samp>poly</samp>: 第一点x坐标，第一点y坐标，第二点x坐标，第二点y坐标，⋯⋯。最后一点不必和第一点相同，此时浏览器会自动补上与第一点相同的最后一点。</li>
</ul>
