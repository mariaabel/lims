<?php
session_start();
require_once 'dBConfig/dBConnect.php';
if(isset($_POST['submit'])){
	$username = mysql_real_escape_string($_POST['username']);
	$password = mysql_real_escape_string($_POST['password']);
	if($username == '' || $password == ''){
		$error_sms = "<span style = 'color:red;font-size:12px'>Fill all empty field</span>";
	}
	else{
		$query = mysql_query("SELECT * FROM user WHERE username = '$username' AND password = '$password'");
		$num_rows = mysql_num_rows($query);
		if($num_rows == 0){
			$error_sms = "<span style = 'color:red;font-size:12px'>Login failed ! Wrong username or password</span>";
		}
		else{
			$fetch_data = mysql_fetch_array($query);
			$role = $fetch_data['role'];
			$status = $fetch_data['status'];
			if($status == 'No'){
			 $error_sms = "<span style = 'color:red;font-size:12px'>Your account has been blocked!</span>";	
			}
			else{
				if($role == 'student'){
					$_SESSION['id'] = $fetch_data['id'];
					$_SESSION['name'] = $fetch_data['name'];
					$_SESSION['reg_no'] = $fetch_data['reg_no'];
					$_SESSION['courseID'] = $fetch_data['courseID'];
					$_SESSION['subjectID'] = $fetch_data['subjectID'];
					$_SESSION['yearOfStudy'] = $fetch_data['yearOfStudy'];
					$_SESSION['role'] = $fetch_data['role'];
					$_SESSION['status'] = $fetch_data['status'];
					$_SESSION['password'] = $fetch_data['password'];
					$_SESSION['username'] = $fetch_data['username'];
					header('location: student/');
				}
				else if($role == 'lecturer'){
					$_SESSION['id'] = $fetch_data['id'];
					$_SESSION['name'] = $fetch_data['name'];
					$_SESSION['reg_no'] = $fetch_data['reg_no'];
					$_SESSION['courseID'] = $fetch_data['courseID'];
					$_SESSION['subjectID'] = $fetch_data['subjectID'];
					$_SESSION['yearOfStudy'] = $fetch_data['yearOfStudy'];
					$_SESSION['role'] = $fetch_data['role'];
					$_SESSION['status'] = $fetch_data['status'];
					$_SESSION['password'] = $fetch_data['password'];
					$_SESSION['username'] = $fetch_data['username'];
					header('location: lecturer/');
				}
				else{
					$_SESSION['id'] = $fetch_data['id'];
					$_SESSION['name'] = $fetch_data['name'];
					$_SESSION['reg_no'] = $fetch_data['reg_no'];
					$_SESSION['courseID'] = $fetch_data['courseID'];
					$_SESSION['subjectID'] = $fetch_data['subjectID'];
					$_SESSION['yearOfStudy'] = $fetch_data['yearOfStudy'];
					$_SESSION['role'] = $fetch_data['role'];
					$_SESSION['status'] = $fetch_data['status'];
					$_SESSION['password'] = $fetch_data['password'];
					$_SESSION['username'] = $fetch_data['username'];
					header('location: lab_tech/');
				}
			}
		}
	}
}
?>