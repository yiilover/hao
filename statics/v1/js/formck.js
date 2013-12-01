//杂志专题投稿
function zazhiForm()
{
	// 杂志名称
	var diszzname = document.getElementById('diszzname').value;
	if(diszzname.length == 0)
	{
		alert("【投稿杂志】未选择，请先在左侧选择要投稿的杂志!");
		document.getElementById('diszzname').style.background='#FFFFCC';
		return false;	
	}
	// 上传
	var downfile = document.getElementById('downfile').value;
	if(downfile.length == 0)
	{
		alert("【上传论文】项未上传文档!");
		document.getElementById('downfile').focus();
		document.getElementById('downfile').style.background='#FFFFCC';
		return false;	
	}
	var title = document.getElementById('title').value;
	if(title.length <5)
	{
		alert("【标题论文】项未填写，或填写不规范!");
		document.getElementById('title').focus();
		document.getElementById('title').style.background='#FFFFCC';
		return false;	
	}
	//作者姓名
	var writer = document.getElementById('writer').value;
	if(writer.length <2)
	{
		alert("【作者姓名】项未填写，或填写不规范!");
		document.getElementById('writer').focus();
		document.getElementById('writer').style.background='#FFFFCC';
		return false;	
	}
	//手机号码

	var tel = document.getElementById('tel').value;
	var reg_ph = /^0?(13[0-9]|15[0-9]|18[0-9]|14[57])[0-9]{8}$/;
	if(!reg_ph.test(tel))
	{
		alert("您的手机未填写，或填写不规范!");
		document.getElementById('tel').value='';
		document.getElementById('tel').focus();
		document.getElementById('tel').style.background='#FFFFCC';
		return false;	
	}
	//电子信箱
	var email = document.getElementById("email").value;
	var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	if(!myreg.test(email))
	{
		alert('请输入有效的E_mail！');
		document.getElementById('email').value='';
		document.getElementById('email').focus();
		document.getElementById('email').style.background='#FFFFCC';
		return false;	
	}
	//服务单位
	var company = document.getElementById('company').value;
	if(company.length < 2)
	{
		alert("【服务单位】项未填写，或填写不规范!");
		document.getElementById('company').focus();
		document.getElementById('company').style.background='#FFFFCC';
		return false;	
	}
return true;
}