
function formpage() {

	  var param = {
				
		      name:$("#isim").val(),
			  surname:$("#soyisim").val(),
			  email: $("#mail").val(),
			  tel: $("#phone").val(),
			  tc: $("#tck").val(),
			  adress: $("#adres").val(),
			  birth_day: $("#b_day").val(),
			  ques1: $("#quest1").val(),
			  ques2: $("#quest2").val(),
			  ques3: $("#quest3").val(),
			  ques4: $("#quest4").val(),
			  ques5: $("#quest5").val(),
			  
	  }
	  
	
	  
	 // axios.post("formpage",param).then(function(response){alert(response)}).catch(function(e){alert(e)});
	
	  
	 
	  
	  
	  
	  axios.post("formpage", param).then( function(response) {
		  
		  if(param.name !="" && param.surname!="" && param.email!="" && param.tel!="" && param.tc!="" && param.adress!="" && param.birth_day!="" && param.ques1!="" && param.ques2!="" && param.ques3!="" && param.ques4!="" && param.ques5!="") {  
		      	return window.location.href="/bayiform/success";}
		  else return alert("Lütfen Boşlukları Doldurunuz")
		 
		  // window.location.href="/bayiform/success"
		  })
		.catch(function(e) {
		    alert(e);
		});
	  
//	  $.ajax({
//		  type:"POST",
//		  contentType:'application/json; charset=UTF-8',
//		  url:'formpage',
//		  data:ser_data,
//		  success:function(data){
// 			  alert(data);
//		  }, error:function(data){
//			  alert(data);
//		  }
//	  });
}



