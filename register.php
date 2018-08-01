<?php 
require_once 'php_action/db_connect.php';

session_start();

if(isset($_SESSION['userId'])) {
	header('location: http://localhost/GamesMgt/dashboard.php');	
}

$errors = array();
$valid['success'] = array('success' => false, 'messages' => array());

if($_POST) {		

	$username = $_POST['username'];
	$password = $_POST['password'];
	$email = $_POST['email'];
	$id = $_POST['id'];

	if(empty($username) || empty($password) || empty($email) || empty($email) ) {
		if($username == "") {
			$errors[] = "Username is required";
		} 

		if($password == "") {
			$errors[] = "Password is required";
		}
		if($email == "") {
			$errors[] = "Email is required";
		}
		if($id == "") {
			$errors[] = "ID is required";
		}
	} else {
		$password = md5($password);
		$sql = "INSERT INTO users (username,password,email,NationalID) VALUES ('$username','$password','$email','$id')";
		if($connect->query($sql) === TRUE) {
	 	$valid['success'] = true;
		$valid['messages'] = "Successfully Added";
		//Sign up successfully
		header('location: http://localhost/GamesMgt/index.php?mess="yes"');
	} else {
	 	$valid['success'] = false;
	 	$valid['messages'] = "Error while adding the members";
	}
	 

	$connect->close();
	echo json_encode($valid);

	} // /else not empty username // password // email // id
	
} // /if $_POST
?>

<!DOCTYPE html>
<html>
<head>
	<title>Games Management System</title>

	<!-- bootstrap -->
	<link rel="stylesheet" href="assests/bootstrap/css/bootstrap.min.css">
	<!-- bootstrap theme-->
	<link rel="stylesheet" href="assests/bootstrap/css/bootstrap-theme.min.css">
	<!-- font awesome -->
	<link rel="stylesheet" href="assests/font-awesome/css/font-awesome.min.css">

  <!-- custom css -->
  <link rel="stylesheet" href="custom/css/custom.css">	

  <!-- jquery -->
	<script src="assests/jquery/jquery.min.js"></script>
  <!-- jquery ui -->  
  <link rel="stylesheet" href="assests/jquery-ui/jquery-ui.min.css">
  <script src="assests/jquery-ui/jquery-ui.min.js"></script>

  <!-- bootstrap js -->
	<script src="assests/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	
	<div class="container">
		<div class="row vertical">
			<div class="col-md-5 col-md-offset-4">
				<div class="panel panel-info">
					<div class="panel-heading">
						<center><h1>GAMES MANAGEMENT SYSTEM</h1></center>
						<h3 class="panel-title">Please Sign up</h3>
					</div>
					<div class="panel-body">

						<div class="messages">
							<?php if($errors) {
								foreach ($errors as $key => $value) {
									echo '<div class="alert alert-warning" role="alert">
									<i class="glyphicon glyphicon-exclamation-sign"></i>
									'.$value.'</div>';										
									}
								} ?>
						</div>
						
						<form class="form-horizontal" action="<?php echo $_SERVER['PHP_SELF'] ?>" method="post" id="loginForm">
							<fieldset>
							  <div class="form-group">
									<label for="username" class="col-sm-2 control-label">Username</label>
									<div class="col-sm-10">
									  <input type="text" class="form-control" id="username" name="username" placeholder="Username" autocomplete="on" />
									</div>
								</div>
								<div class="form-group">
									<label for="password" class="col-sm-2 control-label">Password</label>
									<div class="col-sm-10">
									  <input type="password" class="form-control" id="password" name="password" placeholder="Password" autocomplete="off" />
									</div>
								</div>
								<div class="form-group">
									<label for="email" class="col-sm-2 control-label">Email</label>
									<div class="col-sm-10">
									  <input type="email" class="form-control" id="email" name="email" placeholder="email" autocomplete="on" />
									</div>
								</div>	
								<div class="form-group">
									<label for="id" class="col-sm-2 control-label">ID (National)</label>
									<div class="col-sm-10">
									  <input type="text" class="form-control" id="id" name="id" placeholder="National ID" autocomplete="on" />
									</div>
								</div>	
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
									  <button type="submit" class="btn btn-default"> <i class="glyphicon glyphicon-plus-sign"></i> Sign Up</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
					<!-- panel-body -->
				</div>
				<!-- /panel -->
			</div>
			<!-- /col-md-4 -->
		</div>
		<!-- /row -->
	</div>
	<!-- container -->	
</body>
</html>







	