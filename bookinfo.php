<?php
include_once("includes/init.php");
include_once("common.php");

$chaid = isset($_GET['chaid']) ? $_GET['chaid'] : 0;
$action = isset($_GET['action']) ? $_GET['action'] : "down";
// echo $action;
$bookid = isset($_GET['bookid']) ? $_GET['bookid'] : 0;
$page = isset($_GET['page']) ? $_GET['page'] : '';

if($action=="pages"){
  $bookinfo = $db->select()->from("chapter")->where("id = $chaid")->find();

  if(!$bookinfo)
  {
    show("无章节数据",'booklist.php?bookid=$bookid');
    exit;
  }
  // var_dump($json);

  //上一篇 和 下一篇
  $prev = $db->select("id")->from('chapter')->where("id < $chaid AND bookid=$bookid")->orderby("id","desc")->find();

  $next = $db->select("id")->from('chapter')->where("id > $chaid AND bookid=$bookid")->orderby("id","asc")->find();
  
  $content = is_file(HOME_PATH."assets".$bookinfo['content']) ? file_get_contents(HOME_PATH."assets".$bookinfo['content']) : "";

  if(empty($content))
  {
    show("该章节无内容","booklist.php");
    exit;
  }
  $json = json_decode($content,true);
}

if($page){
  $limit = 1;
  $start = ($page-1)*$limit;

  $bookinfo = $db->select()->from("chapter")->where("id >= $chaid AND bookid = $bookid")->limit($start,$limit)->all();
  // $sql = $db->select()->from("chapter")->where("id >= $chaid AND bookid = $bookid")->getSQL();
  $content = is_file(HOME_PATH."assets".$bookinfo[0]['content']) ? file_get_contents(HOME_PATH."assets".$bookinfo[0]['content']) : "";
  $count = $db->select("COUNT(id) AS c")->from("chapter")->where("id >= $chaid AND bookid = $bookid")->find();
  $json = json_decode($content,true);
  // var_dump($bookinfo);
  $result = array("chapter_title"=>$bookinfo[0]['chapter_title'], "content"=>$json["content"], "count"=>$count);

  echo json_encode($result);
  exit;
}
// var_dump($json);



?>
<!DOCTYPE html>
<html>

<head>
  <?php include_once('meta.php');?>
  <link rel="stylesheet" href="<?php echo HOME_PATH;?>assets/home/plugin/mescroll/mescroll.min.css" />
  <script src="<?php echo HOME_PATH;?>assets/home/plugin/mescroll/mescroll.min.js"></script>
  <style>
    .mescroll{
			/* position: fixed; */
			top: 144px;
			bottom: 0;
			height: auto; /*如设置bottom:50px,则需height:auto才能生效*/
		}
  </style>
</head>
<body>
<div id="nav-over"></div>
<div id="warmp" class="warmp">
	<?php include_once('header.php');?>
	
	<div class="dh">
    <a href="index.php">首页</a> > 
    <font color=#999999><strong><?php echo $action == "pages" ? $json['title'] : '';?></strong></font>
    <?php if($action == "pages"){?>
      <a style="float:right;" href="bookinfo.php?chaid=<?php echo $chaid;?>&bookid=<?php echo $bookid;?>&action=down">下拉阅读</a>
    <?php }else{?>
      <a style="float:right;" href="bookinfo.php?chaid=<?php echo $chaid;?>&bookid=<?php echo $bookid;?>&action=pages">分页阅读</a>
    <?php }?>
  </div>
  <?php if($action == "pages"){?>
    <article class="article">
      <h1 class="hd"><?php echo $json['title'];?></h1>
      <div class="article-con">
        <?php echo $json['content'];?>
      </div>
    </article>
    <div class="pagelist">
      <?php if($prev){?>
        <li><a href="bookinfo.php?chaid=<?php echo $prev['id'];?>&bookid=<?php echo $bookid;?>&action=<?php echo $action;?>">上一页</a></li>
      <?php }else{?>
        <li><a href="javascript:void(0)">无上一页</a></li>
      <?php }?>
      <?php if($next){?>
        <li><a href="bookinfo.php?chaid=<?php echo $next['id'];?>&bookid=<?php echo $bookid;?>&action=<?php echo $action;?>">下一页</a></li>
      <?php }else{?>
        <li><a href="javascript:void(0)">无下一页</a></li>
      <?php }?>
    </div>
  <?php } else{?>
    <div id="mescroll" class="mescroll">
      <article class="article" id="article">
        
      </article> 
    </div>
  <?php } ?>
	

  <?php include_once("footer.php");?>
</div>

<?php include_once("menu.php");?>

</body>
</html>
<script src="<?php echo HOME_PATH;?>assets/home/js/index.js"></script>
<script>
  var mescroll = new MeScroll("mescroll",{
    //设置下拉刷新回调
    down:{
      use: false
    },

    //设置上拉加载
    up:{
      callback: upCallback,
      page: {
        num: 0, //当前页 默认0,回调之前会加1; 即callback(page)会从1开始
        size: 1
      },
      noMoreSize: 1,
      auto: true
    }
  });

  //上拉加载 (增加数据)
  function upCallback(page)
  {
    var pageNum = page.num; // 页码, 默认从1开始 如何修改从0开始 ?
    $.ajax({
      url: `bookinfo.php?chaid=<?php echo $chaid;?>&action=down&page=${pageNum}&bookid=<?php echo $bookid;?>`,
      dataType:"json",
      success: function(data) {
        console.log(page.size);
        var totalSize = data.count.c; // 接口返回的总数据量
        var str = "<h1 class='hd'>"+ data.chapter_title + "</h1><div class='article-con'>" + data.content + "</div>" + "<br><br>";
        $("#article").append(str);
        

        //方法二(推荐): 后台接口有返回列表的总数据量 totalSize
        //必传参数(当前页的数据个数, 总数据量)
        // mescroll.endBySize(page.size, totalSize);
        mescroll.endByPage(page.size, totalSize);
      },
      error: function(e) {
        //联网失败的回调,隐藏下拉刷新和上拉加载的状态
        mescroll.endErr();
      }
    });
  }
</script>