function showImg() {
    var file = document.getElementById("img_file").files[0];
    var reader = new FileReader()
    reader.onload = function(e) {
      document.getElementById("img_id").src=e.target.result
    }
    reader.readAsDataURL(file)
  }
  
 function changeSelect(){
	 var firsevalue = document.getElementById("firstselect").value;
	 var html = '<option value="">---请选择---</option>';
	 if(firsevalue === "服装饰品"){
		 html += '<option value="男士服装">男士服装</option>' +
		 			'<option value="女士服装">女士服装</option>' + 
		 			'<option value="美妆首饰">美妆首饰</option>';
	 }
	 if(firsevalue === "数码3C"){
		 html += '<option value="电脑">电脑</option>' + 
			'<option value="手机">手机</option>' + 
			'<option value="电子配件">电子配件</option>';
	 }
	 if(firsevalue === "生活百货"){
	 		 html += '<option value="生活用品">生活用品</option>' + 
	 			'<option value="学习文具">学习文具</option>' ;
	 }
	 if(firsevalue === "家用电器"){
	 		 html += '<option value="小功率电器">小功率电器</option>' + 
	 			'<option value="大功率电器">大功率电器</option>' ;
	 }
	 if(firsevalue === "运动户外"){
	 		 html += '<option value="运动鞋服">运动鞋服</option>' + 
	 			'<option value="运动器材">运动器材</option>' ;
	 }
	 if(firsevalue === "虚拟道具"){
	 		 html += '<option value="游戏充值">游戏充值</option>' + 
	 			'<option value="游戏道具">游戏道具</option>';
	 }
	 html += '<option value="其他">其他</option>';
	 document.getElementById("secondselect").innerHTML = html;
 }
 
 function check(){
	 var pname = document.getElementById("pname").value;
	 var pfirsttype = document.getElementById("firstselect").value;
	 var psecondtype = document.getElementById("secondselect").value;
	 var pprice = document.getElementById("pprice").value;
	 var pnum = document.getElementById("pnum").value;
	 var ppic = document.getElementById("img_file").value;
	 if(pname == ""){
		 alert("商品名不能为空！");
		 return false;
	 }
	 if(pfirsttype == "" || psecondtype == ""){
		 alert("请选择商品类别！");
		 return false;
	 }
	 if(pprice == ""){
		 alert("请填写商品单价！")
		 return false;
	 }
	 if(pnum == ""){
		 alert("请填写商品库存！");
		 return false;
	 }
	 if(ppic == ""){
		 alert("请上传一张商品图片！");
		 return false;
	 }
	 alert("发布商品成功！");
 }