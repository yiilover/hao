<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('special', 'header'); ?>
<div class="zt_pos"><span class="left">当前位置：<a href="/" title="">首页</a> > <a href="<?php echo $info[url]?>" title=""><?php echo $info[title]?></a> > <a href="" title="">在线投稿</a></span><span class="right"><font color="red">温馨提示：请按“Ctrl+D”收藏本页</font></span></div>	
<div class="clear mt10"></div>
<?php include template('special', 'left'); ?>
<div class="zt_R_main">
<h3 class="zt_h3_1"><strong><a title="在线投稿" href=""><?php echo $info[title]?>在线投稿</a></strong></h3>
<script language="JavaScript" src="/statics/v1/js/formck.js"></script>
<form action="index.php?m=special&c=index&a=tougao&specialid=<?php echo $specialid?>&typeid=53" enctype="multipart/form-data" onsubmit="return zazhiForm();" method="post" id="myform" name="myform">
<input type="hidden" name="do" value="tougao">

<input type="hidden" id="zazhiid" name="tg[specialid]" value="<?php echo $specialid?>">
<input type="hidden" id="cururl" name="cururl" value="<?php echo $_SERVER['REQUEST_URI']?>">
<table width="100%" cellspacing="1" cellpadding="5" bgcolor="#F3CEAB" align="center">
<tbody><tr>
<td height="25" bgcolor="ffffff" style="line-height:180%; color:#555555; padding:10px; background:#f1f1f1" colspan="2"><strong><?php echo $info[title]?>杂志投稿说明：</strong><br>
<strong>1）</strong>成功投稿以后，工作人员会在0-2个工作日通过邮件、电话等方式回访。<br>
<strong>2）</strong>论文中请注明是否允许编辑对论文进行调整。<br>
<strong>3）</strong>论文中请注明单位全称、单位邮编、作者姓名，收信地址，收信人姓名，收信人电话。 </td>
</tr>
<tr>
<td width="16%" height="25" bgcolor="ffffff" align="right">
<div style="width:80px;">投稿杂志：</div>
</td>
<td bgcolor="ffffff">
<input type="text" class="text" disabled="disabled" name="diszzname" id="diszzname" value="<?php echo $info[title]?>">
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height="25" bgcolor="ffffff" align="right">上传论文：</td>
<td bgcolor="ffffff">
<input type="text" class="text input_js thumb" size="30" value="" id="downfile" name="tg[uploadfile]">
<input type="button" class="button_style" onclick="javascript:openwinx('/api.php?action=thumb&amp;cls=thumb&amp;uploadtext=downfile&amp;op=upload','upload','500','250')" style="width:100px" value="浏览上传文件" id="thumb_upimage" name="thumb_upimage">
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height="25" bgcolor="ffffff" align="right">论文标题：</td>
<td bgcolor="ffffff">
<input type="text" size="50" class="text" id="title" name="tg[title]">
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height="25" bgcolor="ffffff" align="right">作者姓名：</td>
<td bgcolor="ffffff">
<input type="text" class="text" id="writer" name="tg[writer]">
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height="25" bgcolor="ffffff" align="right">手机号码：</td>
<td bgcolor="ffffff">
<input type="text" class="text" id="tel" name="tg[tel]">
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height="25" bgcolor="ffffff" align="right">联系邮箱：</td>
<td bgcolor="ffffff">
<input type="text" class="text" id="email" name="tg[email]">
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height="25" bgcolor="ffffff" align="right">服务单位：</td>
<td bgcolor="ffffff">
<input type="text" class="text" id="company" name="tg[company]">
&nbsp;<font color="#FF0000">*</font> </td>
</tr>
<tr>
<td width="16%" height="25" bgcolor="ffffff" align="right">联系QQ：</td>
<td bgcolor="ffffff">
<input type="text" class="text" id="qq" name="tg[qq]"></td>
</tr>
<tr>
<td width="16%" height="25" bgcolor="ffffff" align="right">备注说明：</td>
<td bgcolor="ffffff">
<textarea style="width:90%" class="textarea" rows="5" cols="60" id="info" name="tg[info]"></textarea>
</td>
</tr>
<tr>
<td bgcolor="ffffff"></td>
<td bgcolor="ffffff">
<input type="submit" value="&nbsp;提交投稿&nbsp;" name="dosubmit">
</td>
</tr>
</tbody></table>
</form>

<form action="?" method="get" name="search">
<input name="m" value="special" type="hidden">
<input name="c" value="index" type="hidden">
<input name="specialid" value="1" type="hidden">
<input name="typeid" value="42" type="hidden">
<table width="100%" cellspacing="1" cellpadding="5" bgcolor="#F3CEAB" align="center" style="margin-top:10px;">
<tbody><tr>
<td height="25" bgcolor="ffffff" style="line-height:180%; color:#555555; padding:10px; background:#f1f1f1"><strong>投稿查询说明：</strong>只能查询到通过本中心投稿的学术文章；如果未查询到结果，您也可以联系我们。</td>
</tr>
<tr>
<td bgcolor="#FFFFFF" align="center">
<select class="text" id="s_type" name="s_type">
<option value="title">论文标题</option>
<option value="writer">投稿作者</option>
</select>
&nbsp;条件关键字：
<input type="text" class="text" value="" size="15" name="keyword">
&nbsp;
<input type="submit" value="搜索" name="submit">
&nbsp;&nbsp;&nbsp;&nbsp; 
</td>
</tr>
<?php if($search) { ?>
<?php $n=1;if(is_array($search)) foreach($search AS $v) { ?>
<tr>
<td height="20" bgcolor="#FFFFFF">
<span class="left"><?php if($v['status']==1) { ?><font color="red">[已审核]</font><?php } else { ?><font color="blue">[待审核]</font><?php } ?>&nbsp; <a title="<?php echo $v['title'];?>" target="_blank" href="<?php echo $v['url'];?>"><?php echo $v['title'];?></a> (作者：<?php echo $v['writer'];?>)</span><span class="right">(投稿日期：<?php echo date('Y-m-d',$r[inputtime]);?>)</span></td>
</tr>
<?php $n++;}unset($n); ?>
<?php } ?>
</tbody></table>
</form>
<?php include template('special', 'tgbd'); ?>
</div>

<!--//zt_R_main-->
<div class="clear"></div>
<?php include template('special', 'footer'); ?>