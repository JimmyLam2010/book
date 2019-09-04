<div id="nav-over"></div>
<header class="header">
  <section class="fix navbar">
    <a class="ico-home" href="index.php"><span><?php echo $website_title['value'] ?></span></a>
    <h1 id="title"><?php echo $website_title['value'] ?></h1>
    <span class="ico-nav navHome"><?php echo $website_title['value'] ?></span>
  </section>
</header>
<div class="fix search">
  <form name="f2" method="post" action="index.php">
    <input type="text" value="<?php echo $keyword;?>" placeholder="请输入关键词..." name="keyword" class="keywords">
    <button type="submit" value="" class="go"></button>
  </form>
</div>
<div id="zizhi" class="fix honner-focus"></div>