# CSE482
In this project we were asked to build a website on Hospital Management System. For that we had to use raw PHP as instructed by our faculty.

The main features that we considered for this website are listed below.
> Advanced Registration System for Patients
> Advanced Login System with federated id for both Patient & Doctors
> Doctor Patient Online Communication
> Online Report Submission
> Online Payment System
At first, we created and a mysqli databse named hospital_management. Here we created the required entities for our work.
Advanced Registration System:
In this context we only added registration system for patients only as doctor’s login information will automatically added by the developers. Here we considered two kinds of registration. First one is Emergency Registration and another one Normal Patient registration. In Emergency Registration we considered the situation when a third person has to fill patient information and in Normal Patient registration the patient gives all the information.
Here we have used javascript to validate the form inputs in both cases. 
For validating email in our database below script was used. This script will go through my patient_registration table in my database and then look through if the typed email is already exist in our database or not.
<script type="text/javascript">
	function check(value){
	xmlHttp=GetXmlHttpObject()
	var url="checkemail.php";
	url=url+"?email="+value;
	xmlHttp.onreadystatechange=stateChanged
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
	}
	function stateChanged(){
	if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){
	var showdata = xmlHttp.responseText;
	document.getElementById("mydiv").innerHTML= showdata;
	}
	}
	function GetXmlHttpObject(){
	var xmlHttp=null;
	try{
	xmlHttp=new XMLHttpRequest();
	}
	catch (e) {
	try {
	xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
	}
	catch (e){
	xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	}
	return xmlHttp;
	}
	</script>
If the typed email already exists in our database then it will ask for a new email and if not then it will allow registration with the typed email.
We also used the email verification method verifying the emails and make our registration system more authentic. When a user registers with his or her email address the person will get a verification code via email which has to submitted later to continue his or her registration.


Advanced Login System: 
We tried to build a login system which can integrated with any database of PHP. For that we have used PHP Data Object (PDO).  To use PDO you have to use the later versions of PHP. Because PDO needs to use the Object Oriented features of PHP so the earlier versions of PHP will not work.
We have also added the scope of login using federated id of person (Facebook, Gmail, Twitter).
For that we need to use open a App in developers.facebook.com so that we can use the generated api key and api secret from there. We have used the graph api version 3.1. 

