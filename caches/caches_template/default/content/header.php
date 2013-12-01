<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>中华医护好网-医学论文|代发投稿|护理论文|妇科论文|中医论文|内科论文|外科论文-中华医护好网</title>
<meta content="医护论文|医学论文|代发投稿|护理论文|妇科论文|中医论文|泌尿论文|内科论文|外科论文" name="keywords" />
<meta content="医护论文|为了解决医药卫生工作者发表的难题，中华医护好网凭借着在学术期刊领域的深厚人脉资源，同多家医药学术期刊签订了合作征稿协议，现面向广大卫生职称参评者诚征稿件。" name="description" />

<script language="JavaScript" src="data/config.js"></script>
<script language="JavaScript" src="images/js/jquery.min.js"></script>
<script language="JavaScript" src="images/js/common.js"></script>
<script language="JavaScript" src="images/js/messageck.js"></script>

<link rel="stylesheet" type="text/css" href="/statics/v1/images/config.css" />
<link rel="stylesheet" type="text/css" href="/statics/v1/images/mystyle.css" />
 
<script type="text/javascript">
function tabbox(m,n)
{
var tbh = document.getElementById("tabhead" + m).getElementsByTagName("li");
var tbb = document.getElementById("tabbody" + m).getElementsByTagName("ul");
for(i=0;i<tbh.length;i++)
{
tbh[i].className = i==n ? "now" : "";
tbb[i].style.display = i==n ? "block" : "none";
}
}


// 设置为主页 
function SetHome(obj,vrl){ 
try{ 
obj.style.behavior='url(#default#homepage)';obj.setHomePage(vrl); 
} 
catch(e){ 
if(window.netscape) { 
try { 
netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect"); 
} 
catch (e) { 
alert("此操作被浏览器拒绝！请在浏览器地址栏输入“about:config”并回车然后将 [signed.applets.codebase_principal_support]的值设置为'true',双击即可。"); 
} 
var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch); 
prefs.setCharPref('browser.startup.homepage',vrl); 
}else{ 
alert("您的浏览器不支持，请按照下面步骤操作：1.打开浏览器设置。2.点击设置网页。3.输入："+vrl+"点击确定。"); 
} 
} 
} 
// 加入收藏 兼容360和IE6 
function shoucang(sTitle,sURL) 
{ 
try 
{ 
window.external.addFavorite(sURL, sTitle); 
} 
catch (e) 
{ 
try 
{ 
window.sidebar.addPanel(sTitle, sURL, ""); 
} 
catch (e) 
{ 
alert("加入收藏失败，请使用Ctrl+D进行收藏!"); 
} 
} 
}
</script>
</head>
<body>
<div class="w960 main">
<div class="logopart">
<p><a href="javascript:void(0)" onclick="shoucang('中华医护好网','http://yixuelunwen.w2.027kj.net/')">收藏本站</a><a href="javascript:void(0)" onclick="SetHome(this,window.location)">设为首页</a><a href="/sitemap.html">网站地图</a></p>
</div>
<!--//logopart-->
<div class="navlist">
<div id="tabhead1" class="tab_head">
<ul>
<li onmouseover="tabbox(1,0)" class="now"><a href="./">网站首页</a></li>
<li onmouseover="tabbox(1,1)"><a href="/html/jinji/">晋级政策</a></li>
<li onmouseover="tabbox(1,2)"><a href="/html/qikan/">医学期刊</a></li>
<li onmouseover="tabbox(1,3)"><a href="/html/wenxian/">专科文献</a></li>
<li onmouseover="tabbox(1,4)"><a href="/html/jiaoyu/">医学教育</a></li>
<li onmouseover="tabbox(1,5)"><a href="/html/tougao/">在线投稿</a></li>
<li onmouseover="tabbox(1,6)"><a href="/html/huiyi/">学术会议</a></li>
<li onmouseover="tabbox(1,7)"><a href="/html/xinzhi/">医学新知</a></li>
<li onmouseover="tabbox(1,8)"><a href="/html/xiazai/">医护下载</a></li>
<li onmouseover="tabbox(1,9)"><a href="guestbook/">问答互动</a></li>
<li onmouseover="tabbox(1,10)"><a href="/html/about/contactus/">联系我们</a></li>
</ul>
</div>
<div id="tabbody1" class="tab_body">
<ul class="nohidden">
<li>欢迎您访问<strong>中华医护好网</strong>，中华医护好网是目前中国最大的医学、医疗综合服务提供商之一~</li>
</ul>
<ul>
<li>
<a href="/html/jinji/zhicheng/" title="职称晋升">职称晋升</a>
<a href="/html/jinji/xiezuo/" title="写作技巧">写作技巧</a>
<a href="/html/jinji/jianbie/" title="期刊鉴别">期刊鉴别</a>
</li>
</ul>
<ul>
<li>
<a href="/list.php?catid=40" title="中医期刊">中医期刊</a>
<a href="/list.php?catid=62" title="护理期刊">护理期刊</a>
<a href="/list.php?catid=42" title="省级期刊">省级期刊</a>
<a href="/list.php?catid=43" title="国家级期刊">国家级期刊</a>
<a href="/list.php?catid=150" title="科技核心期刊">科技核心期刊</a>
<a href="/list.php?catid=149" title="北大核心期刊">北大核心期刊</a>
<a href="/list.php?catid=45" title="浙江目录">浙江目录</a>
<a href="/list.php?catid=44" title="中华系列期刊">中华系列期刊</a>
<a href="/list.php?catid=46" title="SCI期刊">SCI期刊</a>
</li>
</ul>
<ul>
<li>
<a href="/html/wenxian/huli/" title="护理">护理</a>
<a href="/html/wenxian/fuchanke/" title="妇产科">妇产科</a>
<a href="/html/wenxian/erke/" title="儿科">儿科</a>
<a href="/html/wenxian/zhongliu/" title="肿瘤科">肿瘤科</a>
<a href="/html/wenxian/huxi/" title="呼吸内科">呼吸内科</a>
<a href="/html/wenxian/xiaohua/" title="消化内科">消化内科</a>
<a href="/html/wenxian/waike/" title="外科">外科</a>
<a href="/html/wenxian/xinxueguan/" title="心血管科">心血管科</a>
<a href="/html/wenxian/neifenmike/" title="内分泌科">内分泌科</a>
<a href="/html/wenxian/miniaoneike/" title="泌尿内科">泌尿内科</a>
<a href="/html/wenxian/guke/" title="骨科">骨科</a>
<a href="/html/wenxian/shengjing/" title="神经外科">神经外科</a>
<a href="/html/wenxian/miniaowaike/" title="泌尿外科">泌尿外科</a>
<a href="/html/wenxian/zonghe/" title="综合临床">综合临床</a>
</li>
</ul>
<ul>
<li>
<a href="/html/jiaoyu/weiquan/" title="医师维权">医师维权</a>
<a href="/html/jiaoyu/dongtai/" title="行业动态">行业动态</a>
<a href="/html/jiaoyu/shenyin/" title="医界声音">医界声音</a>
<a href="/html/jiaoyu/taolun/" title="病例讨论">病例讨论</a>
<a href="/html/jiaoyu/qianxian/" title="科研前线">科研前线</a>
<a href="/html/jiaoyu/shipin/" title="医药时评">医药时评</a>
<a href="/html/jiaoyu/tupu/" title="医学图谱">医学图谱</a>
<a href="/html/jiaoyu/zhengce/" title="政策解读">政策解读</a>
<a href="/html/jiaoyu/mingci/" title="医学名词">医学名词</a>
<a href="/html/jiaoyu/wenshu/" title="医疗文书">医疗文书</a>
</li>
</ul>
<ul>
<li>如果您想发表您的相关课题信息，可以在此免费在线投稿！</li>
</ul>
<ul>
<li>学术会议的说明</li>
</ul>
<ul>
<li>
<a href="/html/xinzhi/buniang/" title="药物不良反应">药物不良反应</a>
<a href="/html/xinzhi/bingli/" title="典型病例">典型病例</a>
<a href="/html/xinzhi/zazheng/" title="疑难杂症">疑难杂症</a>
<a href="/html/xinzhi/wuzheng/" title="误诊误治">误诊误治</a>
<a href="/html/xinzhi/jiufen/" title="医疗纠纷">医疗纠纷</a>
<a href="/html/xinzhi/zhongyi/" title="中医中药">中医中药</a>
<a href="/html/xinzhi/shiyan/" title="实验研究">实验研究</a>
<a href="/html/xinzhi/jiancha/" title="辅助检查">辅助检查</a>
<a href="/html/xinzhi/linchuang/" title="临床研究">临床研究</a>
<a href="/html/xinzhi/wenxian/" title="护理文献">护理文献</a>
<a href="/html/xinzhi/binglitaolun/" title="管理文献">管理文献</a>
<a href="/html/xinzhi/yongyao/" title="临床用药">临床用药</a>
</li>
</ul>
<ul>
<li>
<a href="/html/xiazai/gongju/" title="医护工具">医护工具</a>
<a href="/html/xiazai/kejian/" title="医护课件">医护课件</a>
<a href="/html/xiazai/mulu/" title="晋级期刊目录">晋级期刊目录</a>
<a href="/html/xiazai/zhenggaohan/" title="征稿函下载">征稿函下载</a>
</li>
</ul>
<ul>
<li>您可以与我们进行留言问答动动，将您的疑问在线反馈给我们，我们会尽快给您回复！</li>
</ul>
<ul>
<li>您可以通过本页的联系方式与我们取得联系！</li>
</ul>
</div>
<div class="clear"></div>
</div>
<!--//navlist-->
<div class="navad"><script language="javascript" src="data/js.php?id=8"></script></div>
<div class="search clear">
<form name="search" method="get" action='search.php'>
<input type="hidden" name="do" value="search" />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="10%">
<select name="classid" class="text" style=" padding-top:3px;">
<option value="112"  >期刊杂志</option>
<option value="113"  >投稿论文</option>
<option value="34"  >晋级政策</option>
<option value="63"  >专科文献</option>
<option value="78"  >医学教育</option>
<option value="89"  >医学新知</option>
<option value="103"  >医护下载</option>
<option value="108"  >学术会议</option>
<option value="111"  ></option>
</select>
</td>
<td width="37%"><input name="keyword" id="keyword" type="text" class="text" onFocus="if (value =='请输入关键字'){value =''}" onBlur="if (value ==''){value='请输入关键字'}" value="请输入关键字" size="50" maxlength="20" /></td>
<td width="11%"><input type="image" onclick="document.formName.submit()" src="/statics/v1/images/sear_button.gif"></td>
<td>热门搜索：</td>
</tr>
</table>
</form>
</div>
<!--//search-->

<div class="focus">
<!--DEMO start-->
<script language='javascript'> 
linkarr = new Array();    
picarr = new Array();    
textarr = new Array();    
var swf_width=960;    
var swf_height=200;    
//文字颜色|文字位置|文字背景颜色|文字背景透明度|按键文字颜色|按键默认颜色|按键当前颜色|自动播放时间|图片过渡效果|是否显示按钮|打开方式    
var configtg='0xffffff||0x3FA61F|5|0xffffff|0xC5DDBC|0x000033|3|3|1|_blank';
var files = "";    
var links = "";    
var texts = "";    
//这里设置调用标记    
linkarr[1] = "";
picarr[1]  = "uploadfile/2013/1024/20131024101738158.gif";
textarr[1] = "";
linkarr[2] = "";
picarr[2]  = "uploadfile/2013/0703/20130703021154486.jpg";
textarr[2] = "";
 
 
for(i=1;i<picarr.length;i++){    
if(files=="") files = picarr[i];    
else files += "|"+picarr[i];    
}    
for(i=1;i<linkarr.length;i++){    
if(links=="") links = linkarr[i];    
else links += "|"+linkarr[i];    
}    
document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ swf_width +'" height="'+ swf_height +'">');    
document.write('<param name="movie" value="templates/default/skins/default/MYimages/bcastr3.swf"><param name="quality" value="high">');    
document.write('<param name="menu" value="false"><param name=wmode value="opaque">');    
document.write('<param name="FlashVars" value="bcastr_file='+files+'&bcastr_link='+links+'&bcastr_title='+texts+'&bcastr_config='+configtg+'">');    
document.write('<embed src="templates/default/skins/default/MYimages/bcastr3.swf" wmode="opaque" FlashVars="bcastr_file='+files+'&bcastr_link='+links+'&bcastr_config='+configtg+'&menu="false" quality="high" width="'+ swf_width +'" height="'+ swf_height +'" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />'); document.write('</object>');    
</script>
<!--DEMO end-->
</div>