<?php
namespace app\admin\controller;

class Slider extends \think\Controller
{
    public function index()
    {
        $slider_list = db('slider')->paginate(8);

        $this->assign('slider_list', $slider_list);

        return $this->fetch();
    }

    public function add()
    {
        $tutor_list = db('tutor')->field('tutor_id')->select();

        $this->assign('tutor_list', $tutor_list);
        //跳转到视图add.html
        return $this->fetch();
    }

    public function edit()
    {   
        $tutor_list = db('tutor')->field('tutor_id')->select();

        $this->assign('tutor_list', $tutor_list);

        $slider_info = db('slider')->find(input());
        $this->assign('slider_info', $slider_info);

        //跳转到视图add.html
        return $this->fetch();
    }

    public function update()
    {
        if(!empty($_FILES['slider_img']['tmp_name'])){
            $slider_img = saveAndgetImgSrc(ROOT_PATH."public/static/index/img/",'slider_img');
        }else{
            $slider_img = input('img');
        }
        db('slider')->where('slider_id='.input('slider_id'))->update([
            'slider_img'=>$slider_img,
            'tutor_id'=>input('tutor_id'),
            'slider_title'=>input('slider_title'),
            'slider_summary'=>input('slider_summary')
        ]);
        $this->success('更新成功','index');
    }   

    public function save()
    {
        $slider_img = saveAndgetImgSrc(ROOT_PATH."public/static/index/img/",'slider_img');
        db('slider')->insert([
            'slider_img'=>$slider_img,
            'tutor_id'=>input('tutor_id'),
            'slider_title'=>input('slider_title'),
            'slider_summary'=>input('slider_summary')
        ]);
        //成功跳转到index.html
        $this->success('添加成功', 'index');
    }

    public function delete()
    {
       db("slider")->delete(input());
       $this->success('删除成功','index');
    }

}
