<?php
namespace app\index\controller;
use \think\Controller;
use \think\Session;

//主界面控制器
class Index extends Controller
{
    public function index()
    {
        if(input('del')){
            Session::delete('info');
            Session::delete('topic');
            Session::delete('material');
            Session::delete('zhima');
            Session::delete('verify');
            Session::delete('tutor_info');
        }

    	//获取城市
    	$city = db('city')->select();
        $this->assign('city',$city);

        //获取当前城市
        $city_id = input('city_id')!=null?input('city_id'):1;

        $city_info = db('city')
                    ->alias('c')
                    ->join('adv a','a.adv_id=c.adv_id')
                    ->field('c.city_id,c.city_name,a.adv_id,a.adv_img')
                    ->where("c.city_id='$city_id'")
                    ->find();
        $this->assign('city_info',$city_info);

        //获取行家列表
        $tutor_list = model('Tutor')->getTutorList();
        $this->assign('tutor_list',$tutor_list);

        //获取背景图
        $back_img = db('homeback')->where('status=1')->value('back_img');
        $this->assign('back_img',$back_img);

        //获取轮播图
        $slider_list = db('slider')->limit(3)->select();
        $this->assign('slider_list',$slider_list);

        //获取广告图
        $adv_info = db('advback')->where('status=1')->find();
        $this->assign('adv_info',$adv_info);

        return $this->fetch();
    }
}
