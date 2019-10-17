<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>


<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Başvuru Formu</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap&subset=latin-ext" rel="stylesheet">
    <link rel="stylesheet" href="resim.jpeg"/>
	<style type="text/css">
	
		body {
		    background-color: LightSteelBlue;
		    background-image: url("resim.jpeg");
		    background-attachment: fixed;
		    background-size: cover;
		    font-family: 'Roboto', sans-serif;
		}

		#Form {
		    margin: 50px auto;
		    width: 1000px;
		    min-height: 300px;
		    background-color: rgba(254,254,254,0.5);
		    border-radius: 8px;
		    text-align: center;
		    padding: 20px 200px;
		    color: rgba(145,145,145,0.9);
		    font-size: 1.2em;
		    box-shadow: 2px 5px 5px 0px rgba(0,0,0,0.20);
		}

		.input {
			margin-bottom: 40px;
			margin-top: 10px;
		}
		.input input {
			padding: 5px 10px;
			font-size: 1.2em;
			border-radius: 5px;
			border: 1px solid #dddddd;
			width: 100%

		}

		.label { 
			text-align: left;
		 }
		 #Form h2 {
		 	color: #49505796;

		}
	    

	</style>
</head>
<body>

   
   
  
     <div>
	<div id="Form">
		<h2> Bayilik Ön Başvuru Formu </h2>
		<div>
			<div class="label">
				<label > İsim </label>
			</div>
			<div class="input">
				<input id="isim" type="text"  placeholder="İsim" >
			</div>
		</div>
		<div>
			<div class="label">
				<label > Soyisim </label>
			</div>
			<div class="input">
				<input  id="soyisim" type="text"  placeholder="Soyisim" >
			</div>
		</div>
		<div>
			<div class="label">
				<label >Tc Kimlik </label>
			</div>
			<div class="input">
				<input  id="tck" type="text"  placeholder="T.C. Kimlik" maxlength="11" >
			</div>
		</div>
		<div>
		<div class="label">
				<label >Telefon Numarası </label>
			</div>
			<div class="input">
				<input id="phone" type="text"  pattern="5[0-9]{2}[0-9]{3}[0-9]{2}[0-9]{2}" placeholder="5xxxxxxxxxx"  >
			</div>
		</div>
			<div>
			<div class="label">
				<label > Adres </label>
			</div>
			<div class="input">
				<input id="adres" type="text"  placeholder="Adres" >
			</div>
		</div>
		<div>
		<div class="label">
				<label >E-posta </label>
			</div>
			<div class="input">
				<input id="mail" type="email"  placeholder="example@hotmail.com" >
			</div>
		</div>
		<div>
		<div class="label">
				<label > Doğum Tarihi </label>
			</div>
			<div class="input">
				<input id="b_day" type="date"  pattern="yyyy-MM-dd" >
			</div>
		</div>
		<div>
		<div class="label">
				<label >Perakende ticareti ile uğraştınız mı? </label>
			</div>
			<div class="input">
				<input id="quest1" type="text"  >
			</div>
		</div>
		<div>
		<div class="label">
				<label >Lokumcu babayı tercih etmenizin sebebi nedir? </label>
			</div>
			<div class="input">
				<input id="quest2"  type="text"  >
			</div>
		</div>
		<div>
		<div class="label">
				<label >Hangi il/ilçe/semt için Lokumcu Baba işletmeciliği düşünüyorsunuz? </label>
			</div>
			<div class="input">
				<input id="quest3" type="text"  >
			</div>
		</div>
		<div>
		<div class="label">
				<label >Yatırım miktarınız nedir? </label>
			</div>
			<div class="input">
				<input id="quest4" type="text"  >
			</div>
		</div>
		<div>
		<div class="label">
				<label >Eklemek istedikleriniz: </label>
			</div>
			<div class="input">
				<input  id="quest5"  type="text"  >
			</div>
		</div>

		<div>
			<button class="btn btn-light" onclick="formpage()">Kaydet</button>
		</div>

	</div>
	</div>

 
 <script
  src="https://code.jquery.com/jquery-3.4.1.slim.js"
  integrity="sha256-BTlTdQO9/fascB1drekrDVkaKd9PkwBymMlHOiG+qLI="
  crossorigin="anonymous"></script>
  
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
  
 <script src="custom/formpage.js"></script>

</body>
</html>
