---
layout: post
title: !binary |-
  6K6+572uQ0dyaWRWaWV355qEY29sdW1u5bGe5oCn
wordpress_id: 287
wordpress_url: !binary |-
  aHR0cDovL2Jsb2cuc2hhbmRlcmxhbS5jb20vP3A9Mjg3
date: 2011-01-24 04:18:03.000000000 +08:00
---
<p>
在yii framework中，CGridView类可用于以类似表格的方式展示一系列的数据。而CGridView的columns属性是一个数组值，可用于设置表格的每个列，数组中的每个元素对应GridView的每个列。而每个列所对应的数组元素的值又可以是一个string值或者一个数组。当这个值为数组时，名为class的数组元素用于指定这个列的类名，而其他元素可分别对应该这个类的其他属性。比如下面例子为一个GridView指定了3个列，其中第3个列为CButtonColumn类，并指定了它的deleteConfirmation属性：
<pre>
       'columns'=>array(
                'id',
                'group_name',
                array(
                        'class'=>'CButtonColumn',
                        'deleteConfirmation'=>'Do you want to delete this item?',                                                                                                                                      
                ),
        ),
</pre>
</p>
