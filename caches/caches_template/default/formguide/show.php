<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>




<div class="danye mt10">
<dl>
<dt class="clearfix"><strong class="left">留言板</strong><span class="right">当前位置：<a href="./">首页</a>&nbsp;>&nbsp;留言板</span></dt>
<dd class="liuyan">
<form name="gbook" id="gbook" method="post" action="?m=formguide&c=index&a=show&formid=14&siteid=1" onsubmit="return mesck();">
<input name="do" type="hidden" value="addguestbook" />
<table width="96%" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor="#e2e2e2" class="messageTable">
<caption>我要留言互动</caption>
<tr>
<td width="12%" align="right" bgcolor="#f9f9f9"><font color="#FF0000">*</font>&nbsp;您的称呼：</td>
<td width="36%" bgcolor="#FFFFFF">
<input name="info[name]" type="text" id="name" size="20" class="text" />
</td>
<td align="right" bgcolor="#f9f9f9"><font color="#FF0000">*</font>&nbsp;手机号码：</td>
<td width="36%" bgcolor="#FFFFFF">
<input name="info[mob]" type="text" id="mob" size="20" class="text" />
</td>
</tr>
<tr>
<td align="right" bgcolor="#f9f9f9"><font color="#FF0000">*</font>&nbsp;电子邮件：</td>
<td bgcolor="#FFFFFF">
<input name="info[email]" type="text" id="email" size="20" class="text" />
</td>
<td width="16%" align="right" bgcolor="#f9f9f9"><font color="#FF0000">*</font>&nbsp;服务单位：</td>
<td valign="top" bgcolor="#FFFFFF">
<input name="info[fwdw]" type="text" id="fwdw" size="20" class="text" />
</td>
</tr>
<tr>
<td colspan="4" align="right" bgcolor="#f9f9f9"></td>
</tr>
<tr>
<td align="right" bgcolor="#f9f9f9"><font color="#FF0000">*</font>&nbsp;您的职称：</td>
<td bgcolor="#FFFFFF">
<input name="info[ndzc]" type="text" id="ndzc" size="20" class="text" />
</td>
<td width="16%" align="right" bgcolor="#f9f9f9"><font color="#FF0000">*</font>&nbsp;所在科室：</td>
<td valign="top" bgcolor="#FFFFFF">
<input name="info[szks]" type="text" id="szks" size="20" class="text" />
</td>
</tr>
<tr>
<td align="right" bgcolor="#f9f9f9"><font color="#FF0000">*</font>&nbsp;留言内容：</td>
<td colspan="3" bgcolor="#FFFFFF">
<textarea name="info[content]" cols="96" rows="3" class="textarea" id="content"></textarea>
</td>
</tr>
<tr>
<td align="right" bgcolor="#f9f9f9">&nbsp;</td>
<td colspan="3" bgcolor="#FFFFFF">
<input type="submit"  id="dosubmit" name="dosubmit" value="提交留言" />
</td>
</tr>
</table>
</form>



</dd>
</dl>
</div><!--//danye-->

<div style="clear:both"></div>

<?php include template("content","footer"); ?>