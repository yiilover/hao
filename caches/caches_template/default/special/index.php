<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('special', 'header'); ?>
<div class="zt_pos"><span class="left">当前位置：<a href="http://www.xueshuhao.com/" title="中华医护好网">首页</a> > <a href="zazhi/?id=50" title="《健康大视野》">《健康大视野》</a></span><span class="right"><font color="red">温馨提示：请按“Ctrl+D”收藏本页</font></span></div>	

<div class="clear mt10"></div>
<?php include template('special', 'left'); ?>
<div class="zt_R_main">
<h3 class="zt_h3_1"><strong class="left"><a href="/index.php?m=special&c=index&a=category&specialid=<?php echo $specialid?>&typeid=57" title="杂志往期目录">《<?php echo $info[title]?>》杂志往期目录</a></strong><span class="right"><a href="/index.php?m=special&c=index&a=category&specialid=<?php echo $specialid?>&typeid=57" title="《<?php echo $info[title]?>》杂志往期目录">更多>></a></span></h3>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"special\" data=\"op=special&tag_md5=7baa4f76c3da008ef96487cc488ff6a4&action=content_list&specialid=%24id&typeid=57&listorder=1&num=4\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$special_tag = pc_base::load_app_class("special_tag", "special");if (method_exists($special_tag, 'content_list')) {$data = $special_tag->content_list(array('specialid'=>$id,'typeid'=>'57','listorder'=>'1','limit'=>'4',));}?>
<ul class="ul_a" style="background:#FFFAF6; padding-left:35px">
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
<li><a href="<?php echo $r['url'];?>" target="_blank" title="<?php echo $r['title'];?>"><img src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>" /><span><?php echo $r['title'];?></span></a></li>
<?php $n++;}unset($n); ?>
<div class="clear"></div>
</ul>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
<h3 class="zt_h3_1 mt10"><strong><a href="/index.php?m=special&c=index&specialid=<?php echo $specialid?>&typeid=40" title="杂志介绍">杂志介绍</a></strong></h3>
<div class="m_intr">
<p><?php echo mb_substr($info[description],0,300,'UTF-8');?>……<a href="/index.php?m=special&c=index&specialid=<?php echo $specialid?>&typeid=40" title="杂志介绍">【详细内容】</a>
</div>
<?php include template('special', 'tgbd'); ?>

</div>
<!--//zt_R_main-->
<div class="clear"></div>
<?php include template('special', 'footer'); ?>