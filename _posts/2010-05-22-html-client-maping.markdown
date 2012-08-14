---
layout: post
title: HTML Client Maping
category: Web Development
tags: [html]
date: 2010-05-22 22:14:30.000000000 +08:00
---
图片的客户端映射可以使图片的不同区域链接到不同的目标。可以通过结合使用*img*元素的usemap属性和*map*元素来达到这个效果，下面是一个示例：

    <img src="/images/googleandmicrosoft.jpg" alt="google and microsoft" usemap="#map1" />
    <map name="map1">
        <area coords="0, 0, 169, 67" href="http://www.google.com" title="Google official website" />
        <area coords="0, 68, 169, 135" href="http://www.microsoft.com"  title="Microsoft official website" />
    </map>

其效果如下：

<div>
    <img src="/images/googleandmicrosoft.jpg" alt="google and microsoft" usemap="#map1" />
    <map name="map1">
        <area coords="0, 0, 169, 67" shape="rect" href="http://www.google.com" title="Google official website" />
        <area coords="0, 68, 169, 135" shape="rect" href="http://www.microsoft.com" title="Microsoft official website" />
    </map>
</div>

其中*img*元素的usemap属性用来指定图片使用客户端映射，该属性的值为"#"加上相应的*map*元素的name属性值。*map*元素通过包含在其中的一系列*area*元素指定了图像的不同区域链接到不同的目标。

在*area*元素中,shape属性指定了区域的形状，其取值为以下4种:

default
: 指定了整个图片的区域。

rect
: 定义了一个矩形区域。

circle
: 定义了一个圆形区域。

poly
: 定义了一个多边形区域。

根据不同的shape取值，coords属性的值代表了不同的意思，分别如下：

rect
: 左上角x坐标，左上角y坐标，右下角x坐标，右下角y坐标。

circle
: 圆心x坐标，圆心y坐标，半径。半径的单位可以是px，也可以是百分比。

poly
: 第一点x坐标，第一点y坐标，第二点x坐标，第二点y坐标，⋯⋯。最后一点不必和第一点相同，此时浏览器会自动补上与第一点相同的最后一点。

