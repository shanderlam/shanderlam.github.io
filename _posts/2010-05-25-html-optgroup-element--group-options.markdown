---
layout: post
title: HTML OPTGROUP Element Group Options
category: Web Development
tags: [html]
date: 2010-05-25 11:41:39.000000000 +08:00
---
<p><acronym title="HyperText Markup Language">HTML</acronym>中的*select*标签可以用来生成一个下拉框或者滚动列表(当size属性超过1或者指定了multiple属性时)。当*select*标签中包含的可选项很多的时候，可以通过*optgroup*标签来为选项进行分组，以便于查找相应的选项。下面是一个简单的示例：</p>

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

在HTML4中，*optgroup*标签只能在*select*标签中使用。
