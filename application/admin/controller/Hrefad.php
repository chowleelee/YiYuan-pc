<?php
namespace app\admin\controller;

class Hrefad extends \think\Controller
{
    public function index()
    {
        $select_advback = db('advback')->where('status=1')->find();
        $advback_list = db('advback')->where('status=0')->paginate(8);

        $this->assign('select_advback', $select_advback);
        $this->assign('advback_list', $advback_list);

        return $this->fetch();
    }

    public function add()
    {
        //跳转到视图add.html
        return $this->fetch();
    }

    public function edit()
    {   
        $advback_info = db('advback')->find(input());
        $this->assign('advback_info', $advback_info);

        //跳转到视图add.html
        return $this->fetch();
    }

    public function update()
    {
        $status = input('status');
        if($status){
            db('advback')->where('status=1')->setField('status',0);
        }
        if(!empty($_FILES['advback_img']['tmp_name'])){
            $advback_img = saveAndgetImgSrc(ROOT_PATH."public/static/index/img/",'advback_img');
        }else{
            $advback_img = input('img');
        }
        db('advback')->where('advback_id='.input('advback_id'))->update([
            'advback_img'=>$advback_img,
            'status'=>$status,
            'advback_href'=>$advback_href
        ]);
        $this->success('更新成功','index');
    }   

    public function save()
    {
        $status = input('status');
        if($status){
            db('advback')->where('status=1')->setField('status',0);
        }
        $advback_img = saveAndgetImgSrc(ROOT_PATH."public/static/index/img/",'advback_img');
        db('advback')->insert([
            'advback_img'=>$advback_img,
            'status'=>$status,
            'advback_href'=>input('advback_href')
        ]);
        //成功跳转到index.html
        $this->success('添加成功', 'index');
    }

    public function delete()
    {
       db("advback")->delete(input());
       $this->success('删除成功','index');
    }

}
