/*document.getElementById("generate").addEventListener("click",function(){
	var semestre = document.getElementById("semester").value;
	var filiere = document.getElementById("filiere").value;
	//alert("semestre : "+semestre+"\nfiliere : "+filiere);
	
	
});*/

$(function(){
	
	$("#generate").on("click",function(){
		
		$("#print").attr("disabled",false);
		
		var semester = $("#semester").val();
		var filiere = $("#filiere").val();	
		var jsonarray;
		var splitarray;
//		alert(semester+" "+filiere);
		$.post("process.php",
        {
          semestre: semester,
          filiere: filiere
        },
        function(data,status){
			//$("#data").html(data);
//            console.log("Data: " + data + "\nStatus: " + status);
			jsonarray = JSON.parse(data);
			
			for(var i=1;i<=3;i++)
				for(var j=1;j<=5;j++)
					$("#td"+j+i).html("&nbsp;");
			for(var i=0;i<=jsonarray.length;i++){
				splitarray = jsonarray[i].split("|");
				//alert(jsonarray[i].split("|"));
//				alert(splitarray[0]+" "+splitarray[1]);
				if(splitarray[1] == 1){
					var t = i+1;
				$("#td"+t+"3").text(splitarray[0]);		
					
				}
				if(splitarray[1] == 2){
					var t = i+1;
				$("#td"+t+"2").text(splitarray[0]);		
					
				}
				if(splitarray[1] == 3){
					var t = i+1;
				$("#td"+t+"1").text(splitarray[0]);		
					
				}
				
				
				
			}
        });
		$.post("process_students.php",
        {
          filiere: filiere
        },
        function(data,status){
        	
			//alert(data);
			$("#data").html(data);
			
        });
	});
	
	$("#print").on("click",function(){
		
		$(".form").hide();
		window.print();
		
	});
});
