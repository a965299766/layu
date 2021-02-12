function changeToInfo(){
	if(document.getElementById("personalinfo").style.visibility != "visible"){
		document.getElementById("personalinfo").style.visibility = "visible";
		document.getElementById("myrelease").style.visibility = "hidden";
		document.getElementById("mysold").style.visibility = "hidden";
	}
}

function changeToRelease(){
	if(document.getElementById("myrelease").style.visibility != "visible"){
		document.getElementById("personalinfo").style.visibility = "hidden";
		document.getElementById("mysold").style.visibility = "hidden";
		document.getElementById("myrelease").style.visibility = "visible";
	}
}

function changeToSold(){
	if(document.getElementById("mysold").style.visibility != "visible"){
		document.getElementById("personalinfo").style.visibility = "hidden";
		document.getElementById("myrelease").style.visibility = "hidden";
		document.getElementById("mysold").style.visibility = "visible";
	}
}

function checkUpdate(){
	if (personalinfoform.uname.value == ""){
			alert("请填写用户名！");
			personalinfoform.uname.focus();
			return false;
	    }
	    if (personalinfoform.upassword.value.length < 6 || personalinfoform.upassword.value.length > 18){
			alert("密码必须在6-18个字符之间！");
			personalinfoform.upassword.focus();
			return false;
	    }
	    if(personalinfoform.uemail.value == ""){
	    	alert("邮箱不能为空！");
			personalinfoform.uemail.focus();
			return false;
	    }
	    if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(personalinfoform.uphone.value))){
	    	alert("手机号格式错误！");
			personalinfoform.uphone.focus();
			return false;
	    }
	    alert("修改成功！");
	    return true;
}