<?php
include_once("includes/init.php");
include_once("common.php");


$bookid = isset($_GET['bookid']) ? $_GET['bookid'] : 0;

$book = $db->select()->from("book")->where("id = $bookid")->find();

if(!$book)
{
  show("没有该书籍的数据","index.php");
  exit;
}

$page = isset($_GET['page']) ? $_GET['page'] : 1;
$limit = 10;
$start = ($page-1)*$limit;
$chapterlist =$db->select()->from("chapter")->where("bookid = $bookid")->limit($start,$limit)->all();

if(!$chapterlist)
{
  show("没有该书籍的数据","index.php");
  exit;
}

$action = isset($_GET['action']) ? $_GET['action'] : "";



if($action == "reset")
{
  //直接查询书籍
  echo json_encode($chapterlist);
  exit;
}

//上拉加载
if($action == "page")
{
  $count = $db->select("COUNT(id) AS c")->from("chapter")->where("bookid = $bookid")->find();

  $result = array("chapterlist"=>$chapterlist,"count"=>$count);
  
  echo json_encode($result);
  exit;
}
?>
<!DOCTYPE html>
<html>
<head>
  <?php include_once('meta.php');?>
  <link rel="stylesheet" href="<?php echo HOME_PATH;?>assets/home/plugin/mescroll/mescroll.min.css" />
  <script src="<?php echo HOME_PATH;?>assets/home/plugin/mescroll/mescroll.min.js"></script>


  <!-- 模板引擎插件 -->
  <script src="<?php echo HOME_PATH;?>assets/home/plugin/templatejs/template.js"></script>
  <style>
    .mescroll{
			position: fixed;
			top: 144px;
			bottom: 0;
			height: auto; /*如设置bottom:50px,则需height:auto才能生效*/
		}
  </style>
</head>

<body>
  <div id="warmp" class="warmp">
      <?php include_once('header.php');?>
      
      <div class="dh"><a href="index.php">首页</a> > 数据列表：</div>
      <div id="mescroll" class="mescroll list-index">
        <ul id="chapterlist" class=chapterlist></ul>
      </div>

      
  </div>
  <?php include_once("menu.php");?>

</body>
</html>
<script src="<?php echo HOME_PATH;?>assets/home/js/index.js"></script>
<script id="tpl" type="text/html">
  <%for(var i = 0; i < list.length; i++) {%>
    <li>
        <a href="bookinfo.php?chaid=<%:=list[i].id%>&bookid=<%:=list[i].bookid%>&action=down">
          <%:=list[i].chapter_title%>
        </a>
    </li>
  <%}%>
</script>
<script>
  var mescroll = new MeScroll("mescroll",{
    //设置下拉刷新回调
    down:{
      callback: downCallback,
      auto: false,
    },

    //设置上拉加载
    up:{
      callback: upCallback,
      page: {
        num: 0, //当前页 默认0,回调之前会加1; 即callback(page)会从1开始
        size: 10 //每页数据条数,默认10
      },
      auto: true,
      noMoreSize: 10,
    }
  });

  //下拉刷新的回调函数 (数据清空)
  function downCallback()
  {
    $.ajax({
				url: 'chapterlist.php?action=reset&bookid=<?php echo $bookid;?>',
        dataType:"json",
				success: function(data) {
          var tpl = document.getElementById('tpl').innerHTML;
          var str = template(tpl, {list: data});
          $("#chapterlist").html("");
          // $("#chapterlist").html(str);
          mescroll.resetUpScroll();
					mescroll.endSuccess(); //无参. 注意结束下拉刷新是无参的
				},
				error: function(data) {
					//联网失败的回调,隐藏下拉刷新的状态
					mescroll.endErr();
				}
			});
  }

  //上拉加载 (增加数据)
  function upCallback(page)
  {
    var pageNum = page.num; // 页码, 默认从1开始 如何修改从0开始 ?
    $.ajax({
      url: `chapterlist.php?action=page&page=${pageNum}&bookid=<?php echo $bookid;?>`,
      dataType:"json",
      success: function(data) {
        var curPageData = data.chapterlist; // 接口返回的当前页数据列表
        console.log(data);
        var totalSize = data.count.c; // 接口返回的总数据量

        var tpl = document.getElementById('tpl').innerHTML;
        var str = template(tpl, {list: curPageData});
        $("#chapterlist").append(str);
        // mescroll.endSuccess(); //无参. 注意结束下拉刷新是无参的

        //方法二(推荐): 后台接口有返回列表的总数据量 totalSize
        //必传参数(当前页的数据个数, 总数据量)
        mescroll.endBySize(curPageData.length, totalSize);
        
      },
      error: function(e) {
        //联网失败的回调,隐藏下拉刷新和上拉加载的状态
        mescroll.endErr();
      }
    });
  }
</script>