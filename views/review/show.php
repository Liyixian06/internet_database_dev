<?php

use app\models\Review;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\Comment $model */
/** @var app\models\CommentSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Review';
//$this->params['breadcrumbs'][] = $this->title;
$this->registerCssFile('@web/css/comment.css'); // from https://codepen.io/tahmid-hm-dev/pen/ZEpGXNb
?>

<div class="comment-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <?php if(\Yii::$app->user->isGuest){ ?>
        <p>
            <?= Html::a(Yii::t('user', 'Sign in'), ['/user/security/login']) ?>
            to leave comments!
        </p>
    <?php } else {?>
        <p>Insert Review here!</p>
    <?php }?>

    <div id = 'create' class="comment-create">
        <?= $this->render('_form', [
            'model' => $model,
        ]) ?>
    </div>
    <?php if(\Yii::$app->user->isGuest){?>
           <script>create.style.display = 'none';</script>
    <?php }?>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

</div>

<?php
    foreach ($dataProvider->getModels() as $review) {
            $title = $review->title;
            $review_date =  $review->date;
            $content = $review->content;
            $source = $review->source;
?>
    <div class="comment-thread">
    <details open class="comment" id="comment-1">
        <a href="#comment-1" class="comment-border-link">
            <span class="sr-only">Jump to review-1</span>
        </a>
        <summary>
            <div class="comment-heading">
                <div class="comment-info">
                    <a href="#" class="comment-author"><?php echo $title?></a>
                </div>
            </div>
        </summary>
        <div class="comment-body">
            <p>
                <?php echo $content?>
            </p>
        </div>
    </details>
    </div>
<?php

    }
?>