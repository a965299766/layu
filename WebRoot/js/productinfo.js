function selectNum_minus(){
	var num = parseInt(document.getElementById("num").innerHTML);
	if(num > 1){
		document.getElementById("num").innerHTML = num - 1;
	}
}

function selectNum_plus(max){
	var num = parseInt(document.getElementById("num").innerHTML);
	if(num < max){
		document.getElementById("num").innerHTML = num + 1;
	}
}