function mesck()
{
	//称呼
	var username = document.getElementById('username').value;
	if(username.length == 0)
	{
		alert("您的姓名称呼未填写!");
		document.getElementById('username').value='';
		document.getElementById('username').focus();
		document.getElementById('username').style.background='#FFFFCC';
		return false;	
	}
	else
	{
		var reg_na = /^[\u4e00-\u9fa5]+$/gi;
		if(!reg_na.test(username))
		{
			alert("您的姓名称呼只能是中文!");
			document.getElementById('username').value='';
			document.getElementById('username').focus();
			document.getElementById('username').style.background='#FFFFCC';
			return false;	
		}
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
	//服务单位,职称，所在科室
	var danwei = document.getElementById('danwei').value;
	var zhicheng = document.getElementById('zhicheng').value;
	var keshi = document.getElementById('keshi').value;
	if(danwei == 0 || zhicheng==0 || keshi==0)
	{
		alert("提示，您可能有以下项未填写：\n【服务单位】项未填写!\n【您的职称】项未填写!\n【所在科室】项未填写!");
		document.getElementById('danwei').style.background='#FFFFCC';
		document.getElementById('zhicheng').style.background='#FFFFCC';
		document.getElementById('keshi').style.background='#FFFFCC';
		return false;	
	}
	//留言内容
	var content = document.getElementById('content').value;
	if(content.length <5)
	{
		alert("【留言内容】未填，至少5个汉字!");
		document.getElementById('content').focus();
		document.getElementById('content').style.background='#FFFFCC';
		return false;	
	}
return true;
}