<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><?php if(isset($SEO['title']) && !empty($SEO['title'])) { ?><?php echo $SEO['title'];?><?php } ?><?php echo $SEO['site_title'];?></title>
<meta name="keywords" content="<?php echo $SEO['keyword'];?>">
<meta name="description" content="<?php echo $SEO['description'];?>">


<script language="JavaScript" src="/statics/v1/js/config.js"></script>
<script language="JavaScript" src="/statics/v1/js/jquery.min.js"></script>
<script language="JavaScript" src="/statics/v1/js/common.js"></script>
<script language="JavaScript" src="/statics/v1/js/messageck.js"></script>
<link rel="stylesheet" type="text/css" href="/statics/v1/images/zt/zt.css" />
</head>

<body>
<div class="zt_main">
<div class="zt_banner"><a href="/index.php?m=special&c=index&specialid=<?php echo $specialid?>" title="《<?php echo $info[title]?>》"><img src="<?php echo $info[banner]?>" alt="《<?php echo $info[title]?>》" width="960" height="200"/></a></div>
<div class="zt_nav">
<a href="/index.php?m=special&c=index&specialid=<?php echo $specialid?>" title="">杂志首页</a>
<a href="/index.php?m=special&c=index&specialid=<?php echo $specialid?>&typeid=40">杂志介绍</a>
<a href="/index.php?m=special&c=index&specialid=<?php echo $specialid?>&typeid=41">主办单位</a>
<a href="/index.php?m=special&c=index&specialid=<?php echo $specialid?>&typeid=42">在线投稿</a>
<a href="/index.php?m=special&c=index&a=category&specialid=<?php echo $specialid?>&typeid=53">投稿论文</a>
<a href="/index.php?m=special&c=index&a=category&specialid=<?php echo $specialid?>&typeid=56">学术论文</a>
<a href="/index.php?m=special&c=index&a=category&specialid=<?php echo $specialid?>&typeid=57">往期目录</a>
<a href="/index.php?m=special&c=index&specialid=<?php echo $specialid?>&typeid=43">联系我们</a>
<a href="/index.php?m=special&c=index&specialid=<?php echo $specialid?>&typeid=42" class="spec" title="搞稿此杂"><img src="/statics/v1/images/zt/tougao_b1.gif" alt="投稿此杂" title="投稿此杂" /></a>
</div>