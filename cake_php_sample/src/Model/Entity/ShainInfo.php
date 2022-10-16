<?php
// src/Model/Entity/ShainInfo.php
namespace App\Model\Entity;

use Cake\ORM\Entity;

class ShainInfo extends Entity
{
    protected $_accessible = [
        '*' => true,
        'id' => false,
        'slug' => false,
    ];
}
