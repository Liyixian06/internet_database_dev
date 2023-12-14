<?php

use yii\bootstrap5\Html;
/** @var yii\web\View $this */

$this->title = 'Nuclear Pollution';
?>
<div class="site-index">

    <div class="jumbotron text-center bg-transparent mt-5 mb-5">
        <h1 class="display-4">Congratulations!</h1>

        <p class="lead">You have successfully created your Yii-powered application.</p>

        <p><a class="btn btn-lg btn-success" href="https://www.yiiframework.com">Get started with Yii</a></p>
        <p class="lead text-center">这里可以放点能滑动的头图</p>
    </div>

    <div class="body-content">

        <p class="lead text-center">这里写一些介绍：核污染的概述、重要事件、现状等</p>
        <p>下面是三个子模块的简介和入口</p>
        <div class="row">
            <div class="col-lg-4 mb-3">
                <h2>新闻</h2>

                <p>这里放新闻的介绍</p>

                <p><?=Html::a('News &raquo;',['news'], ['class' => "btn btn-outline-secondary"]) ?></p>
                <!--<p><a class="btn btn-outline-secondary" href="https://www.yiiframework.com/doc/">Yii Documentation &raquo;</a></p>-->
            </div>
            <div class="col-lg-4 mb-3">
                <h2>图表</h2>

                <p>这里放图表的介绍</p>

                <p><?=Html::a('Charts &raquo;',['charts'], ['class' => "btn btn-outline-secondary"]) ?></p>
                <!--<p><a class="btn btn-outline-secondary" href="https://www.yiiframework.com/forum/">Yii Forum &raquo;</a></p>-->
            </div>
            <div class="col-lg-4">
                <h2>社论</h2>

                <p>这里放社论的介绍</p>

                <p><?=Html::a('Review &raquo;',['review'], ['class' => "btn btn-outline-secondary"]) ?></p>
                <!--<p><a class="btn btn-outline-secondary" href="https://www.yiiframework.com/extensions/">Yii Extensions &raquo;</a></p>-->
            </div>
        </div>

    </div>
</div>
