<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("special","header"); ?>
<div class="zt_pos"><span class="left">当前位置：<a href="/">首页</a> > <a href="<?php echo $info[url]?>" title=""><?php echo $info[title]?></a> > <?php echo $title;?></span><span class="right"><font color="red">温馨提示：请按“Ctrl+D”收藏本页</font></span></div>
<div class="clear mt10"></div>
<?php include template('special', 'left'); ?>
<div class="zt_R_main">
<h3 class="zt_h3_1"><strong>信息正文</strong></h3>
<div class="m_intr zt_article">
<h1 class="tit"><?php echo $title;?></h1>
<h6 class="info">作者：<?php echo $writer;?>　投稿/更新时间：<?php echo $inputtime;?>　浏览次数：<span id="hits">0</span>次</h6>
<div class="con">
<h3 style="padding-left:25px; color:red"><?php echo $title;?> 稿件信息说明：</h3>
<p>【投稿论题】<?php echo $title;?></p>
<p>【投稿作者】<?php echo $writer;?></p>
<p>【摘要】</p>
<p>【内容快照】<br>。。。。。。</p>
<p>【投稿日期】<?php echo $inputtime;?></p>
<p>【审稿意见】<?php if($status==1) { ?><font color="#0000FF">[已审稿]</font><?php } else { ?><font color="#0000FF">[未审稿]</font><?php } ?>……</p>

</div><!--//show-->

</div><!--//m_intr-->
</div>
<!--//zt_R_main-->
<div class="clear"></div>

<script language="JavaScript" src="<?php echo APP_PATH;?>api.php?op=count&id=<?php echo $id;?>&module=special-c-<?php echo $specialid;?>"></script>
<?php include template("special","footer"); ?>