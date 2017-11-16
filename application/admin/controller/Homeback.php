<?php
namespace app\admin\controller;

class Homeback extends \think\Controller
{
    public function index()
    {
        $select_back = db('homeback')->where('status=1')->find();
        $back_list = db('homeback')->where('status=0')->paginate(8);

        $this->assign('select_back', $select_back);
        $this->assign('back_list', $back_list);

        return $this->fetch();
    }

    public function add()
    {
        //跳转到视图add.html
        return $this->fetch();
    }

    public function edit()
    {   
        $back_info = db('homeback')->find(input());
        $this->assign('back_info', $back_info);

        //跳转到视图add.html
        return $this->fetch();
    }

    public function update()
    {
        $status = input('status');
        if($status){
            db('homeback')->where('status=1')->setField('status',0);
        }
        if(!empty($_FILES['back_img']['tmp_name'])){
            $back_img = saveAndgetImgSrc(ROOT_PATH."public/static/index/img/",'back_img');
        }else{
            $back_img = input('img');
        }
        db('homeback')->where('back_id='.input('back_id'))->update([
            'back_img'=>$back_img,
            'status'=>$status
        ]);
        $this->success('更新成功','index');
    }   

    public function save()
    {
        $status = input('status');
        if($status){
            db('homeback')->where('status=1')->setField('status',0);
        }
        $back_img = saveAndgetImgSrc(ROOT_PATH."public/static/index/img/",'back_img');
        db('homeback')->insert([
            'back_img'=>$back_img,
            'status'=>$status
        ]);
        //成功跳转到index.html
        $this->success('添加成功', 'index');
    }

    public function delete()
    {
       db("homeback")->delete(input());
       $this->success('删除成功','index');
    }

}
