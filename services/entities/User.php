<?php
namespace Services\Entities;

use ApiBuilder\ORM\Entity;

class User extends Entity
{
  public $id;
  public $username;
  public $password;
}