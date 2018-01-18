<?php
namespace app\index\controller;

use think\Controller;

class Index extends Controller
{
    public function index()
    {

        return $this->fetch();

    }

    public function detail() {
        return $this->fetch();
    }

    public function article() {
        return $this->fetch();
    }

    public function games() {
        return $this->fetch();
    }
}
