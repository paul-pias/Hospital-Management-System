<?php
$con=mysqli_connect("localhost", "root","","hospital_management");

if(isset($_POST['pat_submit']))
{
  $fname=$_POST['fname'];
  $lname=$_POST['lname'];
  $gender=$_POST['gender'];
  $date=$_POST['date'];
  $hpreference=$_POST['hpreference'];
  $phyname=$_POST['phyname'];
  $phonenumber=$_POST['phonenumber'];
  $relationship=$_POST['relationship'];
  $address=$_POST['address'];
  $city=$_POST['city'];
  $homephone=$_POST['homephone'];

  $query = "insert into emergency_form(fname,lname,gender,date,hpreference,phyname,phonenumber,relationship,address,city,homephone)values ('$fname','$lname','$gender','$date','$hpreference','$phyname','$phonenumber','$relationship','$address','$city','$homephone')";
  $result = mysqli_query($con, $query);

  if($result)
  {
    echo "<script>alert ('Successfully Registered')</script>";
    echo "<script>window.open('index.php','_self')</script>";
  }

}

if(isset($_POST['appointment']))
{
  $patient_name=$_POST['patient_name'];
  $departments=$_POST['departments'];
  $date=$_POST['date'];
  $time=$_POST['time'];

  $booking = " insert into appointment_booking(patient_name,departments,date,time)values ('$patient_name','$departments','$date','$time')";
  $booking_result = mysqli_query($con,$booking);
  if($booking_result)
  {
    echo "<script>window.open('index.php','_self')</script>";
  }
}

 ?>
