---
layout: post
title: Set Column Property for CGridView in Yii Framework
date: 2011-01-24 04:18:03.000000000 +08:00
---
在*yii framework*中，**CGridView**类可用于以类似表格的方式展示一系列的数据。而**CGridView**的*columns*属性是一个数组值，可用于设置表格的每个列，数组中的每个元素对应GridView的每个列。而每个列所对应的数组元素的值又可以是一个*string*值或者一个数组。当这个值为数组时，名为*class*的数组元素用于指定这个列的类名，而其他元素可分别对应该这个类的其他属性。比如下面例子为一个GridView指定了3个列，其中第3个列为**CButtonColumn**类，并指定了它的*deleteConfirmation*属性：

    'columns'=>array(
        'id',
        'group_name',
        array(
                'class'=>'CButtonColumn',
                'deleteConfirmation'=>'Do you want to delete this item?',                                                                                                                                      
        ),
    ),
