$(function(){
	$("#bt").click(function(event){
			var flag=true;
			for(var i=0;i<5;i++)
			{
				var temp=$("input").eq(i).val().trim();
				console.log(temp);
				if(temp==""){
					flag=false;
				}
			}
			if(!flag){
				alert('请将信息填写完整');
				event.preventDefault();
			}
		
	});
	function time()
	{
		var now = new Date();
		var year = now.getFullYear(); //得到年份
		var month = now.getMonth()+1;//得到月份
		var date = now.getDate();//得到日期
		var hour= now.getHours();//得到小时数
		var minute= now.getMinutes();//得到分钟数
		var second= now.getSeconds();//得到秒数
		$("#time").text(year+"年 "+month+"月 "+date+"日 "+hour+"时 "+minute+"分 "+second+"秒 ");
	}
	time();
	setInterval(time,1000);
});