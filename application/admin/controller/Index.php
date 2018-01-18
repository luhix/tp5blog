<?php
namespace app\admin\controller;

use think\Controller;

class Index extends Controller
{
    public function index()
    {

        return $this->fetch();

    }

    public function desktop() {
        return $this->fetch('common/Desktop');
    }
}