<?php
include_once("includes/init.php");
include_once("common.php");

$cateid = isset($_GET['cateid']) ? $_GET['cateid'] : 0;
$page = isset($_GET['page']) ? $_GET['page'] : 1;
$action = isset($_GET['action']) ? $_GET['action'] : "";

$limit = 10;
$start = ($page-1)*$limit;


if($action == "reset")
{
  //直接查询书籍
  $booklist =$db->select()->from("book")->where("cateid = $cateid AND display = 'true'")->orderby("id", "desc")->limit($start,$limit)->all();
  echo json_encode($booklist);
  exit;
}

//上拉加载
if($action == "page")
{
  $booklist =$db->select()->from("book")->where("cateid = $cateid AND display = 'true'")->orderby("id", "desc")->limit($start,$limit)->all();

  $count = $db->select("COUNT(id) AS c")->from("book")->where("cateid = $cateid AND display = 'true'")->find();

  $result = array("booklist"=>$booklist,"count"=>$count);
  
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
        <ul id="articlelist" class=articlelist></ul>
      </div>
  </div>

  <?php include_once("menu.php");?>

</body>
</html>
<script src="<?php echo HOME_PATH;?>assets/home/js/index.js"></script>
<script id="tpl" type="text/html">
  <%for(var i = 0; i < list.length; i++) {%>
    <li>
        <a href="chapterlist.php?bookid=<%:=list[i].id%>">
          <%:=list[i].title%>
        </a>
    </li>
  <%}%>
</script>
<script>
  var mescroll = new MeScroll("mescroll",{
    //设置下拉刷新回调
    down:{
      // use: false,
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
      offset: 0,
    }
  });

  //下拉刷新的回调函数 (数据清空)
  function downCallback()
  {
    $.ajax({
				url: 'booklist.php?action=reset&cateid=<?php echo $cateid;?>',
        dataType:"json",
				success: function(data) {
          var tpl = document.getElementById('tpl').innerHTML;
          var str = template(tpl, {list: data});
          console.log(data);
					mescroll.endSuccess(); //无参. 注意结束下拉刷新是无参的
          $("#articlelist").html("");
          // $("#articlelist").html(str);
          mescroll.resetUpScroll();
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
      url: `booklist.php?action=page&page=${pageNum}&cateid=<?php echo $cateid;?>`,
      dataType:"json",
      success: function(data) {
        var curPageData = data.booklist; // 接口返回的当前页数据列表
        var totalSize = data.count.c; // 接口返回的总数据量

        var tpl = document.getElementById('tpl').innerHTML;
        var str = template(tpl, {list: curPageData});
        console.log(curPageData);
        $("#articlelist").append(str);
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