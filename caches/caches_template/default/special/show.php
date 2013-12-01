<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
<div class="main">
	<div class="col-left">
    	<div class="crumbs"><a href="<?php echo APP_PATH;?>">首页</a><span> &gt; </span> <a href="<?php echo APP_PATH;?>index.php?m=special&c=index&a=special">专题</a> <span> &gt; </span> <a href="<?php echo $_special['url'];?>"><?php echo $s_info['title'];?></a> <span> &gt; </span> <?php echo $title;?></div>
        <div id="Article">
        	<h1><?php echo $title;?><br />
<span><?php echo $inputtime;?>&nbsp;&nbsp;&nbsp;评论：<a href="#comment_iframe" id="comment">0</a> 点击：</span><span id="hits"></span></h1>
			<div class="content">
			<?php echo $content;?>
			</div>
<?php if($titles) { ?>
<fieldset>
	<legend class="f14">本文导航</legend><ul class="list blue row-2">
<?php $n=1;if(is_array($titles)) foreach($titles AS $r) { ?>
	<li>·<a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></li>
<?php $n++;}unset($n); ?>
</ul>
</fieldset>
			<?php } ?>
			<div id="pages" class="text-c"><?php echo $title_pages;?></div>
            <div class="related">
            </div>
            <script type="text/javascript" src="<?php echo APP_PATH;?>index.php?m=mood&c=index&a=init&id=<?php echo id_encode($catid,$id,$siteid);?>"></script>
      </div>
      <div class="Article-Tool">
          <a href="" title="错误报告" class="t">错误报告</a>&nbsp;&nbsp;分享到：
          <script type="text/javascript">document.write('<a href="http://v.t.sina.com.cn/share/share.php?url='+encodeURIComponent(location.href)+'&appkey=3172366919&title='+encodeURIComponent('<?php echo new_addslashes($title);?>')+'" title="分享到新浪微博" class="t1" target="_blank">&nbsp;</a>');</script>
		  <script type="text/javascript">document.write('<a href="http://www.douban.com/recommend/?url='+encodeURIComponent(location.href)+'&title='+encodeURIComponent('<?php echo new_addslashes($title);?>')+'" title="分享到豆瓣" class="t2" target="_blank">&nbsp;</a>');</script>
		  <script type="text/javascript">document.write('<a href="http://share.renren.com/share/buttonshare.do?link='+encodeURIComponent(location.href)+'&title='+encodeURIComponent('<?php echo new_addslashes($title);?>')+'" title="分享到人人" class="t3" target="_blank">&nbsp;</a>');</script>
		  <script type="text/javascript">document.write('<a href="http://www.kaixin001.com/repaste/share.php?rtitle='+encodeURIComponent('<?php echo new_addslashes($title);?>')+'&rurl='+encodeURIComponent(location.href)+'&rcontent=" title="分享到开心网" class="t4" target="_blank">&nbsp;</a>');</script>
		  <script type="text/javascript">document.write('<a href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+encodeURIComponent(location.href)+'" title="分享到QQ空间" class="t5" target="_blank">&nbsp;</a>');</script>
      </div>
      <div class="bk10"></div>
	  <?php if(module_exists('comment')) { ?>
      <iframe src="<?php echo APP_PATH;?>index.php?m=comment&c=index&a=init&commentid=<?php echo id_encode("special_content",$id,$siteid);?>&iframe=1" width="100%" height="100%" id="comment_iframe" frameborder="0" scrolling="no"></iframe>
      <div class="box">
        		<h5>评论排行<a href="" class="more">更多>></a></h5>
				 <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"comment\" data=\"op=comment&tag_md5=f96eff7c12a07eee88c5cd43c712bf7e&action=bang&cache=3600\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$tag_cache_name = md5(implode('&',array()).'f96eff7c12a07eee88c5cd43c712bf7e');if(!$data = tpl_cache($tag_cache_name,3600)){$comment_tag = pc_base::load_app_class("comment_tag", "comment");if (method_exists($comment_tag, 'bang')) {$data = $comment_tag->bang(array('limit'=>'20',));}if(!empty($data)){setcache($tag_cache_name, $data, 'tpl_data');}}?>
            	<ul class="content list blue f14 row-2">
				<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                	<li>·<a href="<?php echo $r['url'];?>" target="_blank"><?php echo str_cut($r[title], 26);?></a><span>(<?php echo $r['total'];?>)</span></li>
					<?php $n++;}unset($n); ?>
                </ul>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
		<?php } ?>
  </div>
    <div class="col-auto">
        <div class="box">
            <h5 class="title-2">相关信息</h5>
            <ul class="content digg">
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"special\" data=\"op=special&tag_md5=d40a104c9d26c3b191e4d06f1788a322&action=content_list&specialid=%24specialid&num=10&order=views+DESC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$special_tag = pc_base::load_app_class("special_tag", "special");if (method_exists($special_tag, 'content_list')) {$data = $special_tag->content_list(array('specialid'=>$specialid,'order'=>'views DESC','limit'=>'10',));}?>
				<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
					<li><a href="<?php echo $r['url'];?>" target="_blank"><?php echo str_cut($r[title], 32);?></a></li>
				<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            </ul>
        </div>
    </div>
</div>
<SCRIPT LANGUAGE="JavaScript">
<!--
	function show_ajax(obj) {
		var keywords = $(obj).text();
		var offset = $(obj).offset();
		var jsonitem = '';
		$.getJSON("<?php echo APP_PATH;?>index.php?m=content&c=index&a=json_list&type=keyword&modelid=<?php echo $modelid;?>&keywords="+encodeURIComponent(keywords),
				function(data){
				var j = 1;
				var string = "<div class='point key-float'><div style='position:relative'><div class='arro'></div>";
				string += "<a href='JavaScript:;' onclick='$(this).parent().parent().remove();' hidefocus='true' class='close'><span>关闭</span></a><div class='contents f12'>";
				  $.each(data, function(i,item){
					j = i+1;
					jsonitem += "<a href='"+item.url+"' target='_blank'>"+j+"、"+item.title+"</a><BR>";
					
				  });
					string += jsonitem;
					string += "</div><span class='o1'></span><span class='o2'></span><span class='o3'></span><span class='o4'></span></div></div>";		
					$(obj).after(string);
					$('.key-float').mouseover(
						function (){
							$(this).siblings().css({"z-index":0})
							$(this).css({"z-index":1001});
						}
					)
					$(obj).next().css({ "left": +offset.left-100, "top": +offset.top+$(obj).height()+12});
				});
	}
//-->
</SCRIPT>

<script language="JavaScript" src="<?php echo APP_PATH;?>api.php?op=count&id=<?php echo $id;?>&module=special-c-<?php echo $specialid;?>"></script>
<?php include template("content","footer"); ?>