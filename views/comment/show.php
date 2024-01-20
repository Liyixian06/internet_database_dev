<?php

use app\models\Comment;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\Comment $model */
/** @var app\models\CommentSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Comments';
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
        <p>Leave your comment here!</p>
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
    foreach ($dataProvider->getModels() as $comment) {
        if ($comment->permissions == Comment::PERMISSION_PUBLIC) {
            $username = $comment->user->username;
            $comment_date = date('Y-m-d H:i:s', $comment->created_at);
            $content = $comment->content;
?>
    <div class="comment-thread">
    <details open class="comment" id="comment-1">
        <a href="#comment-1" class="comment-border-link">
            <span class="sr-only">Jump to comment-1</span>
        </a>
        <summary>
            <div class="comment-heading">
                <div class="comment-info">
                    <a href="#" class="comment-author"><?php echo $username?></a>
                    <p class="m-0">
                        <?php echo $comment_date?>
                    </p>
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
    }
?>