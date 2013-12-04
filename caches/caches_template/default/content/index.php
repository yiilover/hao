<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?>

<?php include template("content","header"); ?>

<div class="focus">
<?php echo show_ad(1, 11);?>
</div>


<!--main-->
<div class="index_main">
<div class="index_left">
<div class="zixun">
<p class="mes"><a href="/index.php?m=formguide&c=index&a=show&formid=14" title="留言互动"></a></p>
</div>
<!--//zixun-->
<div class="new">
<h3 class="h3_b"><strong>最近更新</strong></h3>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"special\" data=\"op=special&tag_md5=e8dcc604e848502270bc46f49767a8d6&action=content_list&order=listorder+DESC&num=12\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$special_tag = pc_base::load_app_class("special_tag", "special");if (method_exists($special_tag, 'content_list')) {$data = $special_tag->content_list(array('order'=>'listorder DESC','limit'=>'12',));}?>
<ul class="ul_c">
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
<li>(<?php echo date('m-d',$r[inputtime]);?>)&nbsp;<a href="<?php echo $r['url'];?>" target="_blank" title=""><?php echo str_cut($r['title'], 50);?></a></li>
<?php if($n%4==0) { ?><li class="h10"></li><?php } ?>
<?php $n++;}unset($n); ?>
</ul>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?> 
</div>
<!--//new-->
<div class="lianxi"><?php echo show_ad(1, 13);?>
</div>
<!--//lianxi-->
<div class="luyong">
<h3 class="h3_b"><strong>最近录用</strong></h3>
<div id="demo">
<div id="demo1">
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"special\" data=\"op=special&tag_md5=db7979852f8ba95d6340056c89bafd17&action=content_list&typeid=53&status=1&order=listorder+DESC&num=20\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$special_tag = pc_base::load_app_class("special_tag", "special");if (method_exists($special_tag, 'content_list')) {$data = $special_tag->content_list(array('typeid'=>'53','status'=>'1','order'=>'listorder DESC','limit'=>'20',));}?>
<ul class="ul_c" style="padding:0;">
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
<li><a href="<?php echo $r['url'];?>" target="_blank" title="<?php echo $r['title'];?>"><?php echo $r['title'];?> <b>(作者：<?php echo $r['writer'];?>)</b></a></li>
<?php $n++;}unset($n); ?>
</ul>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?> 
</div>
<div id="demo2"></div>
</div>
<script type="text/javascript">
var speed=40;
var ZJJDemo=document.getElementById('demo');
var ZJJDemo1=document.getElementById('demo1');
var ZJJDemo2=document.getElementById('demo2');
ZJJDemo2.innerHTML=ZJJDemo1.innerHTML;
function Marquee1(){
if(ZJJDemo2.offsetHeight-ZJJDemo.scrollTop<=0)
ZJJDemo.scrollTop-=ZJJDemo1.offsetHeight;
else{
ZJJDemo.scrollTop++
}
}
var MyMar1=setInterval(Marquee1,speed)
ZJJDemo.onmouseover=function() {
clearInterval(MyMar1);
}
ZJJDemo.onmouseout=function() {MyMar1=setInterval(Marquee1,speed)}
</script>
</div>
<!--//luyong-->
<div class="h15"></div>
<div class="remen">
<h3 class="h3_b clear"><strong>热门期刊</strong></h3>
<?php foreach($special_hot as $k=>$r){?>
<div class="item <?php if($k%2!=0) echo 'no';?>"><a href="<?php echo $r['url']?>" target="_blank" title="<?php echo $r['title']?>"><img src="<?php echo $r['thumb']?>" alt="" /><span><?php echo $r['title']?></span></a></div>
<?php }?>
</div>
<!--//remen-->
</div>
<!--//index_left-->
<div class="index_right">
<h3 class="h3_a"><strong class="left">期刊推荐</strong></h3>

<ul class="ul_a" style=" height:237px; background:#FFFAF6">
<?php foreach($special_recommend as $k=>$r){?>
<li><a href="<?php echo $r['url']?>" target="_blank" title="<?php echo $r['title']?>"><img src="<?php echo $r['thumb']?>" alt="" /><span><?php echo $r['title']?></span></a></li>
<?php }?>
<div class="clear"></div>
</ul>
<div class="indexRblock left">

<?php foreach($qk_category_data as $k=>$r){?>
<div class="item <?php if(($k+1)%3==0 && $k>0) echo 'no';?>">
<h3 class="h3_a"><strong class="left"><a href="<?php echo $r['source']['url']?>"><?php echo $r['source']['catname']?></a></strong><span class="right span_h3_a"><a href="/index.php?m=special&c=index&specialid=1&typeid=44" title="在线投稿" target="_blank"><img src="/statics/v1/images/tougao_b1.gif" alt="在线投稿" /></a></span></h3>
<ul class="ul_b">
<?php foreach($r['special_list'] as $i=>$v){?>
<li><a href="<?php echo 'index.php?m=special&c=index&specialid='.$v['id'].'&typeid=42';?>" target="_blank" title=""><?php echo $v['title']?>在线投稿</a></li>
<?php }?>
</ul>
</div>
<?php }?>
</div>
<!--//indexRblock-->
<div class="h10"></div>
<div class="indexTui">
<div class="tou"><strong class="left">学术杂志推荐</strong><span class="right">优质学术杂志精选，助您进一步深入认识行业杂志！</span></div>
<div class="tab">
<div id="tabhead2" class="tab_head_t">
<ul>
<?php foreach($qk_category as $k=>$r){?>
<li onmouseover="tabbox(2,<?php echo $k?>)" <?php if($k==0){?>class="now"<?php }?>><a href="<?php echo $r['url'];?>"><?php echo $r['catname']?></a></li>
<?php }?>
</ul>
</div>
<div id="tabbody2" class="tab_body_t">
<?php foreach($qk_category_recommend_data as $k=>$r){?>
<ul <?php if($k==0){?>class="nohidden"<?php }?>>
<?php foreach($r['special_list'] as $i=>$v){?>
<li <?php if(($k+1)%4==0 && $k>0) echo 'no';?>><a href="<?php echo $v['url']?>" title="<?php echo $v['title']?>" target="_blank"><img src="<?php echo $v['thumb']?>" alt="" /></a> <span class="title"><a href="<?php echo $v['url']?>" title="<?php echo $v['title']?>" target="_blank"><?php echo $v['title']?></a></span> <span>主管：<?php echo $v['zgdw']?></span> <span>CN：<?php echo $v['gnkh']?></span> </li>
<?php }?>
</ul>
<?php }?>
</div><!--//tab_body_t-->
<div class="clear"></div>
</div>
<!--//tab-->
</div>
<!--//indexTui-->
</div>
<!--//index_right-->
<div style="clear:both"></div>
</div>
<!--//index_main-->
<div class="mt10"></div>
<div class="w980 index_two">
<div class="two_left">
<h3 class="h3_b"><strong class="left"><a href="/index.php?m=special&c=index&specialid=1&typeid=44" title="在线投稿">在线投稿</a></strong><span class="right span_h3_a" style="padding-right:10px;"><a href="/index.php?m=special&c=index&specialid=1&typeid=44" title="在线投稿"><img src="/statics/v1/images/tougao_b2.gif" alt="在线投稿" /></a></span></h3>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"special\" data=\"op=special&tag_md5=a8c7c432dec8616493b96bf1a9438086&action=content_list&typeid=53&order=listorder+DESC&num=20\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$special_tag = pc_base::load_app_class("special_tag", "special");if (method_exists($special_tag, 'content_list')) {$data = $special_tag->content_list(array('typeid'=>'53','order'=>'listorder DESC','limit'=>'20',));}?>
<ul class="ul_c clearfix">
<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
<li>
<?php if($r['status']==0) { ?><font color="blue">[待审搞]</font><?php } else { ?><font color="red">[已审搞]</font><?php } ?><a href="<?php echo $r['url'];?>" target="_blank" title="<?php echo $r['title'];?>"><?php echo $r['title'];?></a>
</li>
<?php $n++;}unset($n); ?>
<?php if($n%5==0) { ?><li class="h10"></li><?php } ?>

</ul>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
</div>
<!--//two_left-->
<div class="two_right">
<div class="indexRblock left">

<?php $i=1;?>
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=0323e9fc572f16088176f7653026d337&action=lists&catid=14&order=listorder+ASC&num=6\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'14','order'=>'listorder ASC','limit'=>'6',));}?>
<?php $n=1; if(is_array(subcat(14))) foreach(subcat(14) AS $k => $v) { ?>
<?php if($i>6) continue?>
<div class="item <?php if($i%3==0) { ?>no<?php } ?>">
<h3 class="h3_a"><strong class="left"><a href="<?php echo $v['url'];?>"><?php echo $v['catname'];?></a></strong><span class="right"><a href="<?php echo $v['url'];?>">更多>></a></span></h3>
<ul class="ul_b clearfix">
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=25bfbb84326a27c0fefb82fda704e30c&action=lists&catid=%24v%5Bcatid%5D&order=id+DESC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>$v[catid],'order'=>'id DESC','limit'=>'20',));}?>
<?php $n=1;if(is_array($data)) foreach($data AS $v) { ?>
<li><a href="<?php echo $v['url'];?>" target="_blank" title="<?php echo $v['title'];?>"><?php echo $v['title'];?></a></li>
<?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
</ul>
</div>
<?php $i++;?>
<?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>


</div>
<!--//indexRblock-->
</div>
<!--//two_right-->
</div>
<!--//index_two-->
<div style="clear:both"></div>
<?php include template("content","footer"); ?>