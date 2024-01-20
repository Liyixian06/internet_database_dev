<?php

use yii\helpers\Html;

/** @var yii\web\View $this */
/** @var app\models\Comment $model */

$this->title = 'Create Review';
//$this->params['breadcrumbs'][] = ['label' => 'Comments', 'url' => ['index']];
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="comment-create">

    <p><?=Html::a('&laquo; Back to Review',['show'], ['class' => "btn btn-outline-secondary"]) ?></p>
    <h1><?= Html::encode($this->title) ?></h1>
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>