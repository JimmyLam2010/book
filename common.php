<?php
include_once("includes/init.php");
$keyword = isset($_POST['keyword']) ? trim($_POST['keyword']) : "";

if(!empty($keyword))
{
  $where = "title LIKE '%$keyword%'";
}else{
  $where = "";
}

//最新书籍
$new = $db->select()->from("book")->where("flag = 'new' AND display = 'true'")->limit(0,20)->all();

//网友推荐
$hot = $db->select()->from("book")->where("flag = 'hot' AND display = 'true'")->limit(0,20)->all();

//置顶
$top = $db->select()->from("book")->where("flag = 'top' AND display = 'true'")->limit(0,20)->all();


//查询所有的分类
$catelist = $db->select()->from("cate")->all();

$website_title = $db->select()->from("config")->where("name='website_title'")->find();
$friendly_link = $db->select()->from("config")->where("name='friendly_link'")->find();
$copyright = $db->select()->from("config")->where("name='copyright'")->find();
?>