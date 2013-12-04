<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<div class="position">当前位置：<a href="./">首页</a> > <a href="/html/jiaoyu/">医学教育</a> &gt; </div>
<!--导航以上-->
<div class="index_main qikan">
<div class="index_left">
<div class="remen">
<h3 class="h3_b clear"><strong>推荐期刊</strong></h3>
<?php foreach($special_recommend as $k=>$r){?>
<div class="item <?php if($k>0 && ($k+1)%2==0) echo 'no';?>"><a href="<?php echo $r['url']?>" target="_blank" title=""><img src="<?php echo $r['thumb']?>" alt="" /><span><?php echo $r['title']?></span></a></div>
<?php }?>
</div>
<!--//remen-->
<div class="luyong">
<h3 class="h3_b clear"><strong>最近录用</strong></h3>
<div id="demo" style=" float:left; height:150px; display:inline; overflow:hidden;">
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

<div class="lianxi"><p><a href="html/tougao/"><img width="250" height="100" src="/uploads/20130702153708zk7qsa.gif" alt="" /></a></p>
<p>&nbsp;</p>
<p>免费咨询热线：4006575136</p>
<p>&nbsp;</p>
<p>企业咨询QQ：800070250</p>
<p>&nbsp;</p>
<p>投稿邮箱：<a href="mailto:xsb@yihuhao.com">xsb@yihuhao.com</a></p>
</div>
</div>
<!--//index_left-->

<div class="index_right">
<div class="channel_r_block">
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=8121aa08e37c8c75fcb261c64060c6c1&action=lists&catid=%24catid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>$catid,'order'=>'listorder ASC','limit'=>'20',));}?>
<?php $i=1;?>
<?php $n=1; if(is_array(subcat($catid))) foreach(subcat($catid) AS $k => $v) { ?>
<div class="item <?php if($i%2==0) { ?>no<?php } ?>">
<h3 class="h3_a"><strong class="left"><a href="<?php echo $v['url'];?>" title="<?php echo $v['catname'];?>"><?php echo $v['catname'];?></a></strong><span class="right"><a href="<?php echo $v['url'];?>" title="<?php echo $v['catname'];?>">更多>></a></span></h3>
<ul class="ul_b">
<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=25bfbb84326a27c0fefb82fda704e30c&action=lists&catid=%24v%5Bcatid%5D&order=id+DESC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>$v[catid],'order'=>'id DESC','limit'=>'20',));}?>
<?php $n=1;if(is_array($data)) foreach($data AS $v) { ?>
<li><span class="left"><a href="<?php echo $v['url'];?>" target="_blank" title="<?php echo $v['title'];?>"><?php echo $v['title'];?></a></span><span class="right"></span></li>
<?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
</ul>
</div>
<?php $i++;?>
<?php $n++;}unset($n); ?>
<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

<div class="h10"></div>
</div>
<!--//channel_r_block-->
</div>
<!--//index_right-->
<div style="clear:both"></div>
</div>
<!--//index_main-->
<div style="clear:both"></div>
<?php include template("content","footer"); ?>