<?php

namespace app\models;

use dektrium\user\models\User as BaseUser;

class User extends BaseUser
{
    const ROLE_USER = 1;
    const ROLE_ADMIN = 0;
}