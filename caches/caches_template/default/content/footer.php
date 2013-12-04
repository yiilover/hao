<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><div class="footer">
<p class="foot_nav">
<a title="" href="./">网站首页</a> |
<?php foreach($menu as $k=>$r){?>
<a href="<?php echo $r['url']?>"><?php echo $r['catname']?></a> | 
<?php }?>
<a href="/index.php?m=formguide&c=index&a=show&formid=14">问答互动</a> | 
<a href="/index.php?m=content&c=index&a=lists&catid=3">联系我们</a> | 
<a href="/sitemap.html">网站地图</a>
</p>
<?php echo show_ad(1, 12);?>
</div>
<!--//footer-->
<div class="links"><strong>友情链接：</strong>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"link\" data=\"op=link&tag_md5=92dd011242899e22b82a36e484b21692&action=lists&typeid=0&siteid=%24siteid&linktype=0&order=desc&num=10&return=dat\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$link_tag = pc_base::load_app_class("link_tag", "link");if (method_exists($link_tag, 'lists')) {$dat = $link_tag->lists(array('typeid'=>'0','siteid'=>$siteid,'linktype'=>'0','order'=>'desc','limit'=>'10',));}?>
<?php $n=1;if(is_array($dat)) foreach($dat AS $v) { ?>
<a href="<?php echo $v['url'];?>" target="_blank" title="<?php echo $v['name'];?>"><?php echo $v['name'];?></a>
<?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
</div>
<div class="clear"></div>
</div>
<!--//main-->


</html>