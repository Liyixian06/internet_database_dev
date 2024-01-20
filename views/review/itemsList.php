<?php
     /**
     * Team:
     * Coding by zhaomengyu 2111038,20240120
     * This is reviewControler
     */
 ?>
<?php
echo $this->context->renderPartial('_copyright'); ?>
<?php
use yii\widgets\LinkPager;
use app\models\Review;
use yii\helpers\Html;
use app\assets\AppAsset;
use yii\bootstrap\Carousel;

$this->registerCssFile('@web/css/review.css');
?>

<form action="<?= Yii::$app->urlManager->createUrl(['review/search-title']) ?>" method="get">
    <div class='search-box'>
    <input type="text" name="keyword" placeholder="输入关键词搜索">
    <button type="submit">搜索</button>
    </div>
</form>

<div class ="box">

    <ul>
    <?php foreach($models as $item): ?>
      <li>

            <a href="<?= Yii::$app->urlManager->createUrl(['review/item-detail' , 'id' => $item->id]) ?>"> <?= $item->title ?> </a>
            <?php echo Yii::$app->formatter->asDatetime($item->date, 'php:d/m/Y'); ?></li>

    <?php endforeach; ?>
    <ul>

</div>
<?php
echo LinkPager::widget([
    'pagination' => $pages,
    'nextPageLabel' => '下一页',
    'prevPageLabel' => '上一页',
    'firstPageLabel' => '首页',
    'lastPageLabel' => '尾页',
    'hideOnSinglePage' => false,
    'class' => 'pagination',
])
?>
