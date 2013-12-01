<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('special', 'header'); ?>

<div class="zt_pos"><span class="left">当前位置：<a href="http://www.xueshuhao.com/" title="中华医护好网">首页</a> > <a href="zazhi/?id=50" title="《健康大视野》">《健康大视野》</a> > <a href="zazhi/page.php?navid=293" title="投稿论文">投稿论文</a></span><span class="right"><font color="red">温馨提示：请按“Ctrl+D”收藏本页</font></span></div>	

<div class="clear mt10"></div>
<?php include template('special', 'left'); ?>

<div class="zt_R_main">
<h3 class="zt_h3_1"><strong><a title="学术论文" href="/index.php?m=special&c=index&a=category&specialid=<?php echo $specialid?>&typeid=56">《<?php echo $info[title]?>》学术论文</a></strong></h3>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"special\" data=\"op=special&tag_md5=2bb9354edea74074b82e23589c24deab&action=content_list&specialid=%24specialid&typeid=%24typeid&listorder=3&page=%24page&num=20\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$special_tag = pc_base::load_app_class("special_tag", "special");if (method_exists($special_tag, 'content_list')) {$pagesize = 20;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$special_total = $special_tag->count(array('specialid'=>$specialid,'typeid'=>$typeid,'listorder'=>'3','limit'=>$offset.",".$pagesize,'action'=>'content_list',));$pages = pages($special_total, $page, $pagesize, $urlrule);$data = $special_tag->content_list(array('specialid'=>$specialid,'typeid'=>$typeid,'listorder'=>'3','limit'=>$offset.",".$pagesize,'action'=>'content_list',));}?>
<ul class="ul_c indexXS" style="padding:10px;">
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
<li>
<span class="left"><a title="<?php echo $r['title'];?>" target="_blank" href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></span><span class="right">作者：<?php echo $r['author'];?></span>
</li>
<?php $n++;}unset($n); ?>
<div class="fenye clear" style="text-align:center"><?php echo $pages;?></div>
</ul>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
<?php include template('special', 'tgbd'); ?>
</div>
<!--//zt_R_main-->
<div class="clear"></div>
<?php include template('special', 'footer'); ?>