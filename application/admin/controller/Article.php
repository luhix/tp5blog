<?php
/**
 * User: Nsns
 * Date: 2018-01-18
 * Time: 14:57
 */

namespace app\admin\controller;


use think\Controller;

class Article extends Controller
{
    public function index() {

        return $this->fetch();
    }

    public function add() {
        return $this->fetch('add');
    }
}