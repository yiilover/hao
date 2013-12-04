<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><div class="index_left">
<div class="remen">
<h3 class="h3_b clear"><strong>热门期刊</strong></h3>
<?php foreach($special_hot as $k=>$r){?>
<div class="item <?php if($k>0 && ($k+1)%2==0) echo 'no';?>"><a href="<?php echo $r['url']?>" target="_blank" title=""><img src="<?php echo $r['thumb']?>" alt="" /><span><?php echo $r['title']?></span></a></div>
<?php }?>
</div>
<!--//remen-->
<div class="new">
<h3 class="h3_b clear"><strong>栏目推荐</strong></h3>

<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=b88b880247a15c09652953de31522859&action=lists&catid=%24catid&num=8\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>$catid,'limit'=>'8',));}?>
<ul class="ul_c">
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
<li><a href="<?php echo $r['url'];?>" target="_blank" title=""><?php echo str_cut($r['title'], 50);?></a></li>
<?php if($n%5==0) { ?><li class="h10"></li><?php } ?>
<?php $n++;}unset($n); ?>
</ul>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?> 
</div>
<!--//new-->
<div class="lianxi"><?php echo show_ad(1, 13);?>
</div>
</div>
<!--//index_left-->