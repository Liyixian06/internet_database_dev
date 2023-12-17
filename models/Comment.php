<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "comment".
 *
 * @property int $id
 * @property int|null $user_id
 * @property string $content
 * @property int $permissions
 * @property int $created_at
 * @property int $updated_at
 *
 * @property User $user
 */
class Comment extends \yii\db\ActiveRecord
{
    const PERMISSION_PUBLIC = 0;
    const PERMISSION_PRIVATE = 1;

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'comment';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['user_id', 'permissions', 'created_at', 'updated_at'], 'integer'],
            [['content', 'created_at', 'updated_at'], 'required'],
            [['content'], 'string'],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => User::class, 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'user_id' => 'User ID',
            'content' => 'Content',
            'permissions' => 'Permissions',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    /**
     * Gets query for [[User]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }

    public function getPermissions()
    {
        return array(self::PERMISSION_PUBLIC=>'Public', self::PERMISSION_PRIVATE=>'Private');
    }
    public function getPermissionsLabel($permissions)
    {
        if($permissions == self::PERMISSION_PUBLIC) {
            return 'Public';
        } else {
            return 'Private';
        }
    }
}
