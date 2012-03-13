---
layout: post
title: !binary |-
  SFRNTOS4reeahCZsdDtvcHRncm91cCZndDvmoIfnrb7igJTigJTlr7npgInp
  obnov5vooYzliIbnu4Q=
wordpress_id: 185
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9MTg1
date: 2010-05-25 11:41:39.000000000 +08:00
---
<acronym title="HyperText Markup Language">HTML</acronym>中的&lt;select&gt;标签可以用来生成一个下拉框或者滚动列表（当size属性超过1或者指定了multiple属性时）。当&lt;select&gt;标签中包含的可选项很多的时候，可以通过&lt;optgroup&gt;标签来为选项进行分组，以便于查找相应的选项。下面是一个简单的示例：
<pre>
&lt;select name="China"&gt;
    &lt;optgroup label="East China"&gt;
        &lt;option&gt;Shanghai&lt;/option&gt;
        &lt;option&gt;Hangzhou&lt;/option&gt;
    &lt;/optgroup&gt;
    &lt;optgroup label="South China"&gt;
        &lt;option&gt;Guangzhou&lt;/option&gt;
        &lt;option&gt;Shenzhen&lt;/option&gt;
    &lt;/optgroup&gt;
&lt;/select&gt;
</pre>
显示如下：
<select name="China">
    <optgroup label="East China">
        <option>Shanghai</option>
        <option>Hangzhou</option>
    </optgroup>
    <optgroup label="South China">
        <option>Guangzhou</option>
        <option>Shenzhen</option>
    </optgroup>
</select>
在HTML4中，&lt;optgroup&gt;标签只能在&lt;select&gt;标签中使用。
