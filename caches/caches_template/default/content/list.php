<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<!--main-->
<div class="position">当前位置：<a href="./">首页</a> > <?php echo catpos($catid);?>  </div>
<!--导航以上-->
<div class="index_main">
<?php include template("content","left_list"); ?>
<div class="index_right">
<h3 class="h3_b"><strong><?php echo $catname;?></strong></h3>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=5ab4b05e97fd14c3ed386604ee1a9399&action=lists&catid=%24catid&num=25&order=id+DESC&page=%24page\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 25;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
<ul class="box1 newslit">
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
<li><span class="left"><a href="<?php echo $r['url'];?>" target="_blank" title="<?php echo $r['title'];?>"><?php echo $r['title'];?></a></span><span class="right"><?php echo date('Y-m-d',$r[inputtime]);?></span></li>
<?php if($n%5==0) { ?><li class="line"></li><?php } ?>
<?php $n++;}unset($n); ?>

<li class="fenye"><?php echo $pages;?></li>
</ul>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
<!--//newslit-->
</div>
<!--//index_right-->
<div style="clear:both"></div>
</div>
<!--//index_main-->
<div style="clear:both"></div>

<?php include template("content","footer"); ?>