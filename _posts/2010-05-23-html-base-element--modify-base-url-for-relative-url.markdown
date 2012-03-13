---
layout: post
title: !binary |-
  SFRNTOS4reeahCZsdDtiYXNlJmd0O+agh+etvuKAlOKAlOS/ruaUueino+ae
  kOebuOWvuVVSTOaXtuaJgOS9v+eUqOeahOWfuuacrFVSTA==
wordpress_id: 169
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9MTY5
date: 2010-05-23 15:32:35.000000000 +08:00
---
<p>
在<acronym title="HyperText Markup Language">HTML</acronym>文档中，既可以使用绝对<acronym title="Uniform Resource Locator">URL</acronym>，也可以使用相对URL。通常情况下，在使用相对URL时浏览器会根据当前文档的URL来填补相对URL中的空白部分。而通过&lt;base&gt;标签可以改变这一规则，例如：
<pre>
&lt;head&gt;
    &lt;base href="http://blog.shanderlam.com/content/" /&gt;
    &lt;link rel="stylesheet" href="style.css" type="text/css" /&gt;
&lt;/head&gt;
</pre>
以上代码可让浏览器使用http://blog.shanderlam.com/content/作为解析相对URL时所使用的基本URL。而在其后的&lt;link&gt;标签所指向的目标URL则为http://blog.shanderlam.com/content/style.css。
</p>
<p>
&lt;base&gt;标签只能出现在&lt;head&gt;标签中，它的作用是让浏览器使用其href属性所确定的URL作为解析相对URL时使用的基本URL。通过在HTML文档中正确放置&lt;base&gt;标签，可以使在目录甚至是服务器之间移动文档时，文档中的链接不会被破坏。
</p>
