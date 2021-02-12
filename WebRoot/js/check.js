/**
 * 
 */
//前端检查登录页填写是否合法
function LoginCheck(){
	if (loginform.uname.value == ""){
		alert("请填写用户名！");
		loginform.username.focus();
		return false;
    }
    if (loginform.upassword.value.length < 6 || loginform.upassword.value.length > 18){
		alert("密码必须在6-18个字符之间！");
		loginform.password.focus();
		return false;
    }
}

//前端检查注册页填写是否合法
function RegisterCheck(){
	if (registerform.uname.value == ""){
		alert("请填写用户名！");
		registerform.uname.focus();
		return false;
    }
    if (registerform.upassword.value.length < 6 || registerform.upassword.value.length > 18){
		alert("密码必须在6-18个字符之间！");
		registerform.upassword.focus();
		return false;
    }
    if(registerform.uensurepassword.value != registerform.upassword.value){
    	alert("两次输入的密码不一致！");
		registerform.uensurepassword.focus();
		return false;
    }
    if(registerform.uemail.value == ""){
    	alert("邮箱不能为空！");
		registerform.uemail.focus();
		return false;
    }
    if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(registerform.uphone.value))){
    	alert("手机号格式错误！");
		registerform.uphone.focus();
		return false;
    }
}