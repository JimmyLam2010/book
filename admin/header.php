<div class="navbar">
  <div class="navbar-inner">
    <ul class="nav pull-right">
        <li>
            <a href="#" role="button">
                <i class="icon-user"></i><?php echo $_SESSION['username'];?>
            </a>
        </li>
        <li>
            <a href="index.php?act=logout" class="hidden-phone visible-tablet visible-desktop" role="button">退出</a>
        </li>
    </ul>
    <a class="brand" href="index.php"><span class="second">Admin</span></a>
  </div>
</div>