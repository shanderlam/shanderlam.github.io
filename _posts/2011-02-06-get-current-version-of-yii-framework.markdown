---
layout: post
title: Get Current Version of Yii Framework
category: Programming
tags: [yii, php]
date: 2011-02-06 20:34:29.000000000 +08:00
---
In framework/YiiBase.php file, there is a public method named getVersion(), this
function will return the version of Yii framework. So you can Write codes below
to display Yii framework version in a Yii project.

    <?php echo Yii::getVersion(); ?>
