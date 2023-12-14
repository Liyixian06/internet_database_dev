<?php

/** @var yii\web\View $this */

use yii\helpers\Html;

$this->title = 'News';
/*$this->params['breadcrumbs'][] = $this->title;*/
?>
<div class="site-news">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        This is the News page. You may modify the following file to customize its content:
    </p>

    <code><?= __FILE__ ?></code>
    
    <p>
        新闻页，按时间线（？）放新闻：标题、简介、来源、头图，点进去跳转源链接
    </p>
    <p>
        只是大概想法，具体由负责这部分的同学实现
    </p>
</div>
