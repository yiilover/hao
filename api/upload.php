<?php
$event = isset($_GET['event'])?$_GET['event']:'';

if($event=='uploadfile'){
	$uploaddir = PHPCMS_PATH.'uploadfile/tougao/';
	$image = Upload($uploaddir);
	echo "<script>window.opener.myform.downfile.value='".$image."';window.close();</script>";
}else{	
	include PHPCMS_PATH.'phpcms/templates/default/special/upload.html';	
}

function Upload($uploaddir){
	$tmp_name =$_FILES['file']['tmp_name'];  
	$name     =$_FILES['file']['name'];     
	$size     =$_FILES['file']['size'];  
	$type     =$_FILES['file']['type'];   
	$dir      = $uploaddir.date("Ym");
	@chmod($dir,0777);
    @is_dir($dir) or mkdir($dir,0777);	
	$type = explode(".",$name);
	$type = @$type[1];
	$date = date("YmdHis");
	$types = explode('|','pdf|doc|docx|xls|ppt|wps|zip|rar|txt|jpg|jpeg|gif|bmp|swf|png');
	if(!in_array($type,$types)) exit('error');
	if($size>5242880) exit('error');
	move_uploaded_file($_FILES['file']['tmp_name'],$dir."/".substr(sha1($name),10,36).'.'.$type);
	return date("Ym")."/".substr(sha1($name),10,36).'.'.$type;
}
?>