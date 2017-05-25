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
		var flag=0;
		var flag1=0;
		var backup;
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
			var t=1;
			var j=1;
			
			for(var i=0;i<=jsonarray.length;i++){
				splitarray = jsonarray[i].split("|");
				//alert(jsonarray[i].split("|"));
//				alert(splitarray[0]+" "+splitarray[1]);
				
				if(flag<2){
					
				if(backup!=""){
					$("#td53").text(backup);
				}
				if(splitarray[1] == 3){
					
				$("#td"+t+j).text(splitarray[0]);
					j++;
					flag++;
					
				}
				if(splitarray[1] == 2){
					
				$("#td"+t+j).text(splitarray[0]);
					j++;
					flag++;
					
				}
				if(splitarray[1] == 1){
					
				$("#td"+t+j).text(splitarray[0]);
					j++;
					flag++;
					
				}
				
		
				}else{
					t++;
					j=1;
					flag=0;
					backup=splitarray[0];
					//alert(backup[0]);
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
	
	/*$("#print").on("click",function(){
		
		$(".form").hide();
		window.print();
		
	});*/
	
	$("#print").click(function() { 
        html2canvas($("#widget"), {
            onrendered: function(canvas) {
                theCanvas = canvas;


                canvas.toBlob(function(blob) {
                    saveAs(blob, "Dashboard.png"); 
                });
            }
        });
    });
});
