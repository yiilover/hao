<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('content', 'header'); ?>
<div class="position">当前位置：<a href="./">首页</a> > <a href="javascript:;">在线投稿</a> &gt; </div><script type="text/javascript">
function Permissions(obj,id)
{
var radioVaL= obj.value;
document.getElementById('tgzzname').value = radioVaL;
var idval = document.getElementById('tgzazhiid').value;

document.getElementById('diszzname').value = radioVaL;
//document.getElementById('zazhiname').value = radioVaL;
document.getElementById('zazhiid').value = id;
}
</script>
<!--导航以上-->

<div class="navad"><img src="/statics/v1/images/960_tg.gif" height="100" /></div>
<div class="tougaopage">
<div class="leftPage" id="leftPage">
<div class="tab_head" id="tabhead3">
<ul>
<?php foreach($qk_category as $k=>$r){?>
<li onclick="tabbox(3,<?php echo $k?>)" <?php if($k==0){?>class="now"<?php }?>><?php echo $r['catname']?></li>
<?php }?>
</ul>
</div><!--//tab_head-->
<div class="tab_body" id="tabbody3">
<?php foreach($qk_category_data as $k=>$r){?>
<ul <?php if($k==0){?>class="nohidden"<?php }?>>
<?php foreach($r['special_list'] as $i=>$v){?>
<li>
<h3><input type="hidden" name="tgzazhiid" id="tgzazhiid" value="<?php echo $v['id']?>"/>
<input name="tgzzname" id="tgzzname" type="radio" value="<?php echo $v['title']?>" onclick="Permissions(this,<?php echo $v['id']?>)" specialid="<?php echo $v['id']?>" /><?php echo $v['title']?>杂志投稿</h3>
<div class="url">
<a href="/index.php?m=special&c=index&specialid=<?php echo $v['id']?>&typeid=40" target="_blank" title="杂志介绍">杂志介绍</a>
<a href="/index.php?m=special&c=index&specialid=<?php echo $v['id']?>&typeid=42" target="_blank" title="杂志介绍">我要投稿</a>
<a href="/index.php?m=special&c=index&specialid=<?php echo $v['id']?>&typeid=43" target="_blank" title="杂志介绍">联系我们</a>
</div>
<div class="info">主管：<?php echo $v['zgdw']?>，CN刊号:<?php echo $v['gnkh']?></div>
</li>
<?php }?>
</ul>
<?php }?>

</div><!--//tab_body-->
<div class="clear"></div>
</div><!--//leftPage-->

<div class="rightPage" id="rightPage">
<div class="FormDiv">
<h3 class="h3_b"><strong><span id="formzzname"></span>在线投稿</strong></h3>
<script language="JavaScript" src="/statics/v1/js/formck.js"></script>

<form name="myform" id="myform" method="post" onSubmit="return zazhiForm();" enctype="multipart/form-data" action="index.php?m=special&c=index&a=tougao&typeid=53">
<input type="hidden" value="tougao" name="do">

<input type="hidden" value="109" name="tg[specialid]" id="zazhiid">
<input type="hidden" id="cururl" name="cururl" value="<?php echo $_SERVER['REQUEST_URI']?>">
<table width="100%" align="center" cellpadding="5" cellspacing="1" bgcolor="#F3CEAB">
<tr>
<td height=25 colspan="2" bgcolor="ffffff" style="line-height:180%; color:#555555; padding:10px; background:#f1f1f1"><strong>杂志投稿说明：</strong><br>
<strong>1）</strong>成功投稿以后，工作人员会在0-2个工作日通过邮件、电话等方式回访。<br>
<strong>2）</strong>论文中请注明是否允许编辑对论文进行调整。<br>
<strong>3）</strong>论文中请注明单位全称、单位邮编、作者姓名，收信地址，收信人姓名，收信人电话。 </td>
</tr>
<tr>
<td width="16%" height=25 align="right" bgcolor="ffffff">
<div style="width:80px;">投稿杂志：</div>
</td>
<td bgcolor="ffffff">
<input type="text" value="" id="diszzname" name="diszzname" disabled="disabled" class="text"/>
&nbsp;<font color="#FF0000">请先在左侧选择要投稿的杂志*</font> </td>
</tr>
<tr>
<td width="16%" height=25 align="right" bgcolor="ffffff">上传论文：</td>
<td bgcolor="ffffff">
<input type="text" name="tg[uploadfile]" id="downfile" value="" size="30" class="text input_js thumb" />
<input type="button" name="thumb_upimage" id="thumb_upimage" value="浏览上传文件" style="width:100px" onclick="javascript:openwinx('/api.php?action=thumb&amp;cls=thumb&amp;uploadtext=downfile&amp;op=upload','upload','500','250')" class="button_style" />
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height=25 align="right" bgcolor="ffffff">论文标题：</td>
<td bgcolor="ffffff">
<input name="tg[title]" id="title" type="text" class="text" size="50" >
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height=25 align="right" bgcolor="ffffff">作者姓名：</td>
<td bgcolor="ffffff">
<input name="tg[writer]" id="writer" type="text" class="text" >
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height=25 align="right" bgcolor="ffffff">手机号码：</td>
<td bgcolor="ffffff">
<input name="tg[tel]" id="tel" type="text"  class="text">
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height=25 align="right" bgcolor="ffffff">联系邮箱：</td>
<td bgcolor="ffffff">
<input name="tg[email]" id="email" type="text" class="text" >
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height=25 align="right" bgcolor="ffffff">服务单位：</td>
<td bgcolor="ffffff">
<input name="tg[company]" id="company" type="text" class="text" >
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height=25 align="right" bgcolor="ffffff">联系QQ：</td>
<td bgcolor="ffffff">
<input name="tg[qq]" id="qq" type="text" class="text" ></td>
</tr>
<tr>
<td width="16%" height=25 align="right" bgcolor="ffffff">备注说明：</td>
<td bgcolor="ffffff">
<textarea name="tg[info]" id="info" cols="60" rows="5" class="textarea" style="width:90%"></textarea>
</td>
</tr>
<tr>
<td bgcolor="ffffff"></td>
<td bgcolor="ffffff">
<input type="submit" name="dosubmit" value="&nbsp;提交投稿&nbsp;">
</td>
</tr>
</table>
</form>
</div><!--//rightPage-->
</div><!--//tougaopage-->

<!--//index_main-->
<div style="clear:both"></div>
<?php include template('content', 'footer'); ?>