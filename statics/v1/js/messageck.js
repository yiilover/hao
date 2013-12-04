function mesck()
{
	//称呼
	var name = document.getElementById('name').value;
	if(name.length == 0)
	{
		alert("您的姓名称呼未填写!");
		document.getElementById('name').value='';
		document.getElementById('name').focus();
		document.getElementById('name').style.background='#FFFFCC';
		return false;	
	}
	else
	{
		var reg_na = /^[\u4e00-\u9fa5]+$/gi;
		if(!reg_na.test(name))
		{
			alert("您的姓名称呼只能是中文!");
			document.getElementById('name').value='';
			document.getElementById('name').focus();
			document.getElementById('name').style.background='#FFFFCC';
			return false;	
		}
	}
	//手机号码
	var mob = document.getElementById('mob').value;
	var reg_ph = /^0?(13[0-9]|15[0-9]|18[0-9]|14[57])[0-9]{8}$/;
	if(!reg_ph.test(mob))
	{
		alert("您的手机未填写，或填写不规范!");
		document.getElementById('mob').value='';
		document.getElementById('mob').focus();
		document.getElementById('mob').style.background='#FFFFCC';
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
	var fwdw = document.getElementById('fwdw').value;
	var ndzc = document.getElementById('ndzc').value;
	var szks = document.getElementById('szks').value;
	if(fwdw == 0 || ndzc==0 || szks==0)
	{
		alert("提示，您可能有以下项未填写：\n【服务单位】项未填写!\n【您的职称】项未填写!\n【所在科室】项未填写!");
		document.getElementById('fwdw').style.background='#FFFFCC';
		document.getElementById('ndzc').style.background='#FFFFCC';
		document.getElementById('szks').style.background='#FFFFCC';
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