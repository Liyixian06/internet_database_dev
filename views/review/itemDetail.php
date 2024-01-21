<?php    /**
     * Team:
     * Coding by zhaomengyu 2111038,20240120
     * This is reviewControler
     */
use app\models\Review;
use yii\helpers\Html;
     $this->registerCssFile('@web/css/detail.css');
 ?>

<?php echo $this->context->renderPartial('_copyright'); ?>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<div id="myCarousel" class="carousel slide">
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<div class="item active">
		<img src="https://d.ifengimg.com/q100/img1.ugc.ifeng.com/newugc/20210413/8/wemedia/082d65b2fd0de28f798c67da702bdee6077cd4c1_size395_w1280_h854.jpg" alt="First slide">
		<?php
		$i = $item->id -1;
		if(Review::findOne(['id' => $i])) {?>
			<a href="<?= Yii::$app->urlManager->createUrl(['review/item-detail' , 'id' => $item['id']-1]) ?>">
			<?php }
			else{?>
			<a href="<?= Yii::$app->urlManager->createUrl(['review/item-detail' , 'id' => $item['id']]) ?>">
			<?php }?>
			<div class="carousel-caption"><div class="text">前一条</div></div>
			</a>

		</div>

		<div class="item">
		<img src="https://img2.voc.com.cn/remote/2021/04/21/555_4c45be2e122c60f2338ac6719c20b8fef930bbfe.jpg"  alt="Second slide">
		<?php
		$j = $item->id +1;
		if(Review::findOne(['id' => $j])) {?>
			<a href="<?= Yii::$app->urlManager->createUrl(['review/item-detail' , 'id' =>  $item['id']+1]) ?>">
			<?php }
			else{?>
			<a href="<?= Yii::$app->urlManager->createUrl(['review/item-detail' , 'id' => $item['id']]) ?>">
			<?php }?>
			<div class="carousel-caption"><div class="text">后一条</div></div>
			</a>
		</div>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	</a>
</div>
<div class="t">
 <h1><?php echo $item['title'] ?></h1>
Date: <b><?php echo $item['date'] ?></b>
Source: <b><a href="<?=$item['source'] ?>">原文链接</a></b>
<h3>Content</h3>
<p>
<?php
$new = str_replace("\n", "<br>", $item['content']);
echo $new ?>
</p>
</div>
<script>
  $('#myCarousel').carousel({
    interval: 3000, // 自动轮播间隔时间，单位为毫秒
    wrap: true // 轮播到最后一个item时是否回到第一个item
  });
</script>