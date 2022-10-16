<?php
// src/Model/Table/ShainInfoTable.php
namespace App\Model\Table;

use Cake\ORM\Table;

class ShainInfoTable extends Table
{
    public function initialize(array $config) : void
    {
        $this->addBehavior('Timestamp');
    }
}
