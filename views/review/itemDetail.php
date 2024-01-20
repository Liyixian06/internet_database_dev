<?php    /**
     * Team:
     * Coding by zhaomengyu 2111038,20240120
     * This is reviewControler
     */

use yii\helpers\Html;
     $this->registerCssFile('@web/css/detail.css');
 ?>

<?php echo $this->context->renderPartial('_copyright'); ?>

<div class="t">
 <h1><?php echo $item['title'] ?></h1>
Date: <b><?php echo $item['date'] ?></b>
<h3>Content</h3>
<p>
<?php
$new = str_replace("\n", "<br>", $item['content']);
echo $new ?>
</p>
</div>