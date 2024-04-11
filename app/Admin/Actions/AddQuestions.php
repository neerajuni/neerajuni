<?php

namespace App\Admin\Actions;

use OpenAdmin\Admin\Actions\RowAction;

class AddQuestions extends RowAction
{
    public $name = 'Add Questions';

    public $icon = 'icon-comments';

    /**
     * @return  string
     */
    public function href()
    {
        //return $this->getKey();
        return '/admin/questions/'.$this->getKey();
    }
    
}