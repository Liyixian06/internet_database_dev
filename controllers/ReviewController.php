<?php
namespace app\controllers;
use Yii;
use app\models\Review;
use yii\web\Controller;
use yii\data\Pagination;
use yii\widgets\LinkPager;
 /**
     * Team:
     * Coding by zhaomengyu 2111038,20240120
     * This is reviewControler
     */
class ReviewController extends Controller
{ // 4. actions are handled from controller functions whose name starts with 'action' and the first letter of each word is uppercase;
public $model;
public function actions()
{
    return [
        'pages' => [
            'class' => 'yii\web\ViewAction',
        ],
    ];
}
public function dataItems()
{
    $review = Review::find()->All();
    return $review;
}
public function actionItemList(){

    $reviewList = $this->dataItems();
    $countQuery = Review::find();
    $count = Review::find()->count();
    $pages = new Pagination([
    'totalCount' => $count,
    'pageSize' => 5,

    ]);
    $models = $countQuery->offset($pages->offset)
               ->limit($pages->limit)
               ->all();
    return $this->render('itemsList',['models'=> $models,'pages'=>$pages]);
}
public function actionItemDetail($id)
{

    $reviewList = $this->dataItems();

    $item = null;
    foreach($reviewList as $n)
    {
        if($id == $n->id) $item = $n;
    }

    return $this->render('itemDetail', ['item' => $item]);
}

public function actionSearchTitle ()
{
    $keyword = Yii::$app->request->get('keyword');
    $countQuery = Review::find()->where(['like', 'title', $keyword]);
    if($countQuery ->count()>0)
    {
    $count = $countQuery ->count();
    $pages = new Pagination([
    'totalCount' => $count,
    'pageSize' => 5,
    ]);
    $models = $countQuery->offset($pages->offset)
               ->limit($pages->limit)
               ->all();
    return $this->render('itemsList',['models'=> $models,'pages'=>$pages]);
    }
    return $this->redirect(Yii::$app->request->getReferrer());

}
}

