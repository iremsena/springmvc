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
		   
		    background-attachment: fixed;
		    background-size: cover;
		    font-family: 'Roboto', sans-serif;
		}

		#Form {
		    margin: 50px auto;
		    width: 1000px;
		    min-height: 300px;
		    background-color: rgba(254,254,254,0.9);
		    border-radius: 8px;
		    text-align: center;
		    padding: 20px 200px;
		    color: rgba(68, 66, 66, 0.9);
		    font-size: 1.2em;
		    box-shadow: 1px 9px 9px 9px rgba(0,0,0,0.20);
		}

		.input {
			margin-bottom: 40px;
			margin-top: 10px;
		}
		.input input, .input select {
			padding: 5px 10px;
			font-size: 1.2em;
			border-radius: 5px;
			border: 1px solid #dddddd;
			width: 100%;
			color: gray

		}

		.label { 
			text-align: left;
		 }
		 #Form h2 {
		 	color: #078398;

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
				<input  id="tck" type="text" onblur="tckimlikkontorolu(this);" placeholder="T.C. Kimlik" maxlength="11"  >
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
				<input id="adres" type="text"  placeholder="Adres" required >
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
				<input id="quest2"  type="text"   >
			</div>
		</div>
		<div>
		<div class="label">
				<label >Hangi il için Lokumcu Baba işletmeciliği düşünüyorsunuz? </label>
			</div>
			<div class="input">
				 <select  id="quest3"  >
                                <option value="">İl Seçiniz</option>
                                <option value="İstanbul">İstanbul</option>
                                <option value="Ankara">Ankara</option>
                                <option value="İzmir">İzmir</option>
                                <option value="Adana">Adana</option>
                                <option value="Adıyaman">Adıyaman</option>
                                <option value="Afyonkarahisar">Afyonkarahisar</option>
                                <option value="Ağrı">Ağrı</option>
                                <option value="Aksaray">Aksaray</option>
                                <option value="Amasya">Amasya</option>
                                <option value="Antalya">Antalya</option>
                                <option value="Ardahan">Ardahan</option>
                                <option value="Artvin">Artvin</option>
                                <option value="Aydın">Aydın</option>
                                <option value="Balıkesir">Balıkesir</option>
                                <option value="Bartın">Bartın</option>
                                <option value="Batman">Batman</option>
                                <option value="Bayburt">Bayburt</option>
                                <option value="Bilecik">Bilecik</option>
                                <option value="Bingöl">Bingöl</option>
                                <option value="Bitlis">Bitlis</option>
                                <option value="Bolu">Bolu</option>
                                <option value="Burdur">Burdur</option>
                                <option value="Bursa">Bursa</option>
                                <option value="Çanakkale">Çanakkale</option>
                                <option value="Çankırı">Çankırı</option>
                                <option value="Çorum">Çorum</option>
                                <option value="Denizli">Denizli</option>
                                <option value="Diyarbakır">Diyarbakır</option>
                                <option value="Düzce">Düzce</option>
                                <option value="Edirne">Edirne</option>
                                <option value="Elazığ">Elazığ</option>
                                <option value="Erzincan">Erzincan</option>
                                <option value="Erzurum">Erzurum</option>
                                <option value="Eskişehir">Eskişehir</option>
                                <option value="Gaziantep">Gaziantep</option>
                                <option value="Giresun">Giresun</option>
                                <option value="Gümüşhane">Gümüşhane</option>
                                <option value="Hakkâri">Hakkâri</option>
                                <option value="Hatay">Hatay</option>
                                <option value="Iğdır">Iğdır</option>
                                <option value="Isparta">Isparta</option>
                                <option value="Kahramanmaraş">Kahramanmaraş</option>
                                <option value="Karabük">Karabük</option>
                                <option value="Karaman">Karaman</option>
                                <option value="Kars">Kars</option>
                                <option value="Kastamonu">Kastamonu</option>
                                <option value="Kayseri">Kayseri</option>
                                <option value="Kırıkkale">Kırıkkale</option>
                                <option value="Kırklareli">Kırklareli</option>
                                <option value="Kırşehir">Kırşehir</option>
                                <option value="Kilis">Kilis</option>
                                <option value="Kocaeli">Kocaeli</option>
                                <option value="Konya">Konya</option>
                                <option value="Kütahya">Kütahya</option>
                                <option value="Malatya">Malatya</option>
                                <option value="Manisa">Manisa</option>
                                <option value="Mardin">Mardin</option>
                                <option value="Mersin">Mersin</option>
                                <option value="Muğla">Muğla</option>
                                <option value="Muş">Muş</option>
                                <option value="Nevşehir">Nevşehir</option>
                                <option value="Niğde">Niğde</option>
                                <option value="Ordu">Ordu</option>
                                <option value="Osmaniye">Osmaniye</option>
                                <option value="Rize">Rize</option>
                                <option value="Sakarya">Sakarya</option>
                                <option value="Samsun">Samsun</option>
                                <option value="Siirt">Siirt</option>
                                <option value="Sinop">Sinop</option>
                                <option value="Sivas">Sivas</option>
                                <option value="Şırnak">Şırnak</option>
                                <option value="Tekirdağ">Tekirdağ</option>
                                <option value="Tokat">Tokat</option>
                                <option value="Trabzon">Trabzon</option>
                                <option value="Tunceli">Tunceli</option>
                                <option value="Şanlıurfa">Şanlıurfa</option>
                                <option value="Uşak">Uşak</option>
                                <option value="Van">Van</option>
                                <option value="Yalova">Yalova</option>
                                <option value="Yozgat">Yozgat</option>
                                <option value="Zonguldak">Zonguldak</option>
                            </select>
                            
			</div>
		</div>
		<div>
		<div class="label">
				<label >Yatırım miktarınız nedir? </label>
			</div>
			<div class="input">
				<input id="quest4" type="number" placeholder=" ‎₺" >
			</div>
		</div>
		<div>
		<div class="label">
				<label >Eklemek istedikleriniz: </label>
			</div>
			<div class="input">
				<input  id="quest5"  type="text"   >
			</div>
		</div>

		<div>
			<button class="btn btn-light"   onclick="formpage()">Kaydet</button>
		</div>

	</div>
	</div>

 
 <script
  src="https://code.jquery.com/jquery-3.4.1.js">
 </script>
  
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
  
 <script src="custom/formpage.js"></script>
 <script src="custom/tc.js"></script>

</body>
</html>
