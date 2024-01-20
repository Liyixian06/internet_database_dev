<?php
namespace app\controllers;
use Yii;
use app\models\Review;
use app\models\ReviewSearch;
use yii\web\Controller;
use yii\data\Pagination;
use yii\widgets\LinkPager;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use app\components\AccessRule;
use app\models\User;
 /**
     * Team:
     * Coding by zhaomengyu 2111038,20240120
     * This is reviewControler
     */
class ReviewController extends Controller
{ // 4. actions are handled from controller functions whose name starts with 'action' and the first letter of each word is uppercase;
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
                'access' => [
                    'class' => AccessControl::className(),
                    'ruleConfig' => [
                        'class' => AccessRule::className(),
                    ],
                    'only' => ['index','update','delete','view','show'],
                    'rules' => [
                        [
                            'actions' => ['show'],
                            'allow' => true,
                            'roles' => ['?',User::ROLE_USER, User::ROLE_ADMIN],
                        ],
                        [
                            'actions' => ['index','view','update','delete'],
                            'allow' => true,
                            'roles' => [User::ROLE_ADMIN],
                        ],
                    ],
                ],
            ]
        );
    }

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
public function actionIndex(){


    $searchModel = new ReviewSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
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
    /**
     * Displays a single Review model.
     * @param int $id ID
     * @return string
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }
    public function actionShow()
    {
        $model = new Review();
        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {

                $model->date = time();

                if($model->save()) {
                    return $this->redirect(['show']);
                }
            }
        } else {
            $model->loadDefaultValues();
        }

        $searchModel = new ReviewSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('show', [
            'model' => $model,
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionCreate()
    {
        $model = new Review();

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {


               $m = Review::find()->max("id");
                $model->id = $m+1;
                if($model->save()) {
                    return $this->redirect(['view', 'id' => $model->id]);
                }
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }
       /**
     * Updates an existing Review model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return string|\yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Review model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return \yii\web\Response
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Review model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return Review the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Review::findOne(['id' => $id])) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}

