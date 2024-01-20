<?php

namespace app\models;
use yii\db\ActiveRecord;
use Yii;

/**
 * Team:
 * Coding by zhaomengyu 2111038,20240120
 * This is reviewControler
 * This is the model class for table "review".
 *
 * @property int $id
 * @property string $title
 * @property string $content
 * @property  $date
 */
class Review extends ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'review';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'title'], 'required'],
            [['content'], 'string'],
            [['title'], 'string', 'max' => 255],
            [['date'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'content' => 'Content',
            'date' => 'Date',
        ];
    }
}