<?php

/*
 * This file is part of the Dektrium project.
 *
 * (c) Dektrium project <http://github.com/dektrium/>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace dektrium\user;

use yii\base\BaseObject;
use yii\db\ActiveQuery;

/**
 * Finder provides some useful methods for finding active record models.
 *
 * @author Dmitry Erofeev <dmeroff@gmail.com>
 */
class Finder extends BaseObject
{
    /** @var ActiveQuery */
    protected $userQuery;

    /** @var ActiveQuery */
    protected $tokenQuery;

    /** @var ActiveQuery */
    protected $accountQuery;

    /** @var ActiveQuery */
    protected $profileQuery;

    /**
     * @return ActiveQuery
     */
    public function getUserQuery()
    {
        return $this->userQuery;
    }

    /**
     * @return ActiveQuery
     */
    public function getTokenQuery()
    {
        return $this->tokenQuery;
    }

    /**
     * @return ActiveQuery
     */
    public function getAccountQuery()
    {
        return $this->accountQuery;
    }

    /**
     * @return ActiveQuery
     */
    public function getProfileQuery()
    {
        return $this->profileQuery;
    }

    /** @param ActiveQuery $accountQuery */
    public function setAccountQuery(ActiveQuery $accountQuery)
    {
        $this->accountQuery = $accountQuery;
    }

    /** @param ActiveQuery $userQuery */
    public function setUserQuery(ActiveQuery $userQuery)
    {
        $this->userQuery = $userQuery;
    }

    /** @param ActiveQuery $tokenQuery */
    public function setTokenQuery(ActiveQuery $tokenQuery)
    {
        $this->tokenQuery = $tokenQuery;
    }

    /** @param ActiveQuery $profileQuery */
    public function setProfileQuery(ActiveQuery $profileQuery)
    {
        $this->profileQuery = $profileQuery;
    }

    /**
     * Finds a user by the given id.
     *
     * @param  integer     $id User id to be used on search.
     * @return models\User
     */
    public function findUserById($id)
    {
        return $this->findUser(['id' => $id])->one();
    }

    /**
     * Finds a user by the given username.
     *
     * @param  string      $username Username to be used on search.
     * @return models\User
     */
    public function findUserByUsername($username)
    {
        return $this->findUser(['username' => $username])->one();
    }

    /**
     * Finds a user by the given email.
     *
     * @param  string      $email Email to be used on search.
     * @return models\User
     */
    public function findUserByEmail($email)
    {
        return $this->findUser(['email' => $email])->one();
    }

    /**
     * Finds a user by the given username or email.
     *
     * @param  string      $usernameOrEmail Username or email to be used on search.
     * @return models\User
     */
    public function findUserByUsernameOrEmail($usernameOrEmail)
    {
        if (filter_var($usernameOrEmail, FILTER_VALIDATE_EMAIL)) {
            return $this->findUserByEmail($usernameOrEmail);
        }

        return $this->findUserByUsername($usernameOrEmail);
    }

    /**
     * Finds a user by the given condition.
     *
     * @param  mixed               $condition Condition to be used on search.
     * @return \yii\db\ActiveQuery
     */
    public function findUser($condition)
    {
        return $this->userQuery->where($condition);
    }

    /**
     * Finds an account by id.
     *
     * @param integer $id
     * @return models\Account|null
     */
    public function findAccountById($id)
    {
        return $this->accountQuery->where(['id' => $id])->one();
    }

    /**
     * Finds an account by client id and provider name.
     *
     * @param string $provider
     * @param string $clientId
     * @return models\Account|null
     */
    public function findAccountByProviderAndClientId($provider, $clientId)
    {
        return $this->accountQuery->where([
            'provider'  => $provider,
            'client_id' => $clientId
        ])->one();
    }
    /**
     * Finds a token by user id and code.
     *
     * @param  mixed  $condition
     * @return ActiveQuery
     */
    public function findToken($condition)
    {
        return $this->tokenQuery->where($condition);
    }

    /**
     * Finds a profile by user id.
     *
     * @param integer $id
     * @return null|models\Profile
     */
    public function findProfileById($id)
    {
        return $this->findProfile(['user_id' => $id])->one();
    }

    /**
     * Finds a profile
     *
     * @param  mixed $condition
     * @return \yii\db\ActiveQuery
     */
    public function findProfile($condition)
    {
        return $this->profileQuery->where($condition);
    }
}
