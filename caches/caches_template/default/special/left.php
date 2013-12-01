<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><div class="zt_L_main">
﻿		<div><a href="/index.php?m=special&c=index&specialid=<?php echo $specialid?>" title="搞稿此杂志"><img src="/statics/v1/images/zt/tougao.gif" /></a></div>
<div class="zt_zuixin mt10">
<h3 class="h3_b"><strong>最新投稿</strong></h3>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"special\" data=\"op=special&tag_md5=496be029535a9ae7761e2204cebc0dff&action=content_list&specialid=%24specialid&typeid=53&listorder=3&page=%24page&num=12\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$special_tag = pc_base::load_app_class("special_tag", "special");if (method_exists($special_tag, 'content_list')) {$pagesize = 12;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$special_total = $special_tag->count(array('specialid'=>$specialid,'typeid'=>'53','listorder'=>'3','limit'=>$offset.",".$pagesize,'action'=>'content_list',));$pages = pages($special_total, $page, $pagesize, $urlrule);$data = $special_tag->content_list(array('specialid'=>$specialid,'typeid'=>'53','listorder'=>'3','limit'=>$offset.",".$pagesize,'action'=>'content_list',));}?>
<ul class="ul_c">
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
<li>
<?php if($r['status']==1) { ?><font color="red">[已审核]</font><?php } else { ?><font color="blue">[待审核]</font><?php } ?>&nbsp;
<a href="<?php echo $r['url'];?>" target="_blank" title="<?php echo $r['title'];?>"><?php echo str_cut($r['title'], 40);?></a>
</li>
<?php if($n%4==0) { ?>
<li class="h10"></li>
<?php } ?>
<?php $n++;}unset($n); ?>
</ul>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
</div>
<!--//zt_zuixin-->		
<div class="zt_zuixin mt10">
<h3 class="h3_b"><strong>相关论文</strong></h3>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"special\" data=\"op=special&tag_md5=c50870fce23351cbf2acde6aa4f9fc99&action=content_list&specialid=%24specialid&typeid=56&listorder=3&page=%24page&num=10\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$special_tag = pc_base::load_app_class("special_tag", "special");if (method_exists($special_tag, 'content_list')) {$pagesize = 10;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$special_total = $special_tag->count(array('specialid'=>$specialid,'typeid'=>'56','listorder'=>'3','limit'=>$offset.",".$pagesize,'action'=>'content_list',));$pages = pages($special_total, $page, $pagesize, $urlrule);$data = $special_tag->content_list(array('specialid'=>$specialid,'typeid'=>'56','listorder'=>'3','limit'=>$offset.",".$pagesize,'action'=>'content_list',));}?>
<ul class="ul_c">
<li><a href="<?php echo $r['url'];?>" target="_blank" title="<?php echo $r['title'];?>"><?php echo str_cut($r['title'], 60);?></a></li>
</ul>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
</div>
<!--//相关文章-->
</div>
<!--//zt_L_main-->