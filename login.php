<?php
	session_start();
	
	// Check if user is already logged in
	if(isset($_SESSION['loggedIn'])){
		header('Location: index.php');
		exit();
	}
	
	require_once('inc/config/constants.php');
	require_once('inc/config/db.php');
	require_once('inc/header.html');
?>
  <body  style="background-image:url('image/R.gif')" >

<?php
// Variable to store the action (login, register, passwordReset)
$action = '';
	if(isset($_GET['action'])){
		$action = $_GET['action'];
		if($action == 'register'){
?>
			<div class="container" >
			  <div class="row justify-content-center">
			 <div class="col-sm-12 col-md-5 col-lg-5"> 
				<div class="card">
				  <div class="card-header">
					Register
				  </div>
				  <div class="card-body">
					<form action="">
					<div id="registerMessage"></div>
					  <div class="form-group">
						<label for="registerFullName">Name<span class="requiredIcon">*</span></label>
						<input type="text" class="form-control" id="registerFullName" name="registerFullName">
						<!-- <small id="emailHelp" class="form-text text-muted"></small> -->
					  </div>
					   <div class="form-group">
						<label for="registerUsername">Username<span class="requiredIcon">*</span></label>
						<input type="email" class="form-control" id="registerUsername" name="registerUsername" autocomplete="on">
					  </div>
					  <div class="form-group">
						<label for="registerPassword1">Password<span class="requiredIcon">*</span></label>
						<input type="password" class="form-control" id="registerPassword1" name="registerPassword1">
					  </div>
					  <div class="form-group">
						<label for="registerPassword2">Re-enter password<span class="requiredIcon">*</span></label> 
						<input type="password" class="form-control" id="registerPassword2" name="registerPassword2">
					  </div> 
					  <a href="login.php" class="btn btn-primary">Login</a>
					  <button type="button" id="register" class="btn btn-success">Register</button>
					  <!--<a href="login.php?action=resetPassword" class="btn btn-warning">Reset Password</a>-->
					  <button type="reset" class="btn">Clear</button>
					</form>
				  </div>
				</div>
				</div>
			  </div>
			</div>
<?php
			require 'inc/footer.php';
			echo '</body></html>';
			exit();
		} elseif($action == 'resetPassword'){
?>
			<div class="container">
			  <div class="row justify-content-center">
			  <div class="col-sm-12 col-md-5 col-lg-5">
				<div class="card">
				  <div class="card-header">
					Reset Password
				  </div>
				  <div class="card-body">
					<form action="">
					<div id="resetPasswordMessage"></div>
					  <div class="form-group">
						<label for="resetPasswordUsername">Username</label>
						<input type="text" class="form-control" id="resetPasswordUsername" name="resetPasswordUsername">
					  </div>
					  <div class="form-group">
						<label for="resetPasswordPassword1">New Password</label>
						<input type="password" class="form-control" id="resetPasswordPassword1" name="resetPasswordPassword1">
					  </div>
					  <div class="form-group">
						<label for="resetPasswordPassword2">Confirm New Password</label>
						<input type="password" class="form-control" id="resetPasswordPassword2" name="resetPasswordPassword2">
					  </div>
					  <a href="login.php" class="btn btn-primary">Login</a>
					  <!--<a href="login.php?action=register" class="btn btn-success">Register</a> -->
					  <button type="button" id="resetPasswordButton" class="btn btn-warning">Reset Password</button>
					  <button type="reset" class="btn">Clear</button>
					</form>
				  </div>
				</div>
				</div>
			  </div>
			  <?php
session_start();

// Check if user is already logged in
if (isset($_SESSION['loggedIn'])) {
  header('Location: index.php');
  exit();
}

// Include necessary files and establish database connection
require_once('inc/config/constants.php');
require_once('inc/config/db.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Check the action parameter
  if (isset($_GET['action'])) {
    $action = $_GET['action'];
    if ($action === 'login') {
      // Handle user login
      $username = $_POST['loginUsername'];
      $password = $_POST['loginPassword'];

      // You should perform proper validation and sanitation of input data here.
      // Also, use password hashing for storing passwords in the database.

      // Query the database to verify the user's credentials
      // For example:
      // $query = "SELECT * FROM users WHERE username = '$username' AND password = '$hashedPassword'";
      // Execute the query and check if the user exists

      // For the purpose of this example, let's assume the login is successful
      // Replace the following line with the actual database query and verification logic
      $loggedIn = true;

      if ($loggedIn) {
        // Set session variable to indicate the user is logged in
        $_SESSION['loggedIn'] = true;
        $_SESSION['username'] = $username;
        header('Location: index.php');
        exit();
      } else {
        // Login failed
        echo "Invalid credentials. Please try again.";
      }
    } elseif ($action === 'register') {
      // Handle user registration
      // Implement user registration logic and database insert here
    } elseif ($action === 'resetPassword') {
      // Handle password reset
      // Implement password reset logic and update the user's password in the database
    }
  }
}

// If the action parameter is not set or unknown action, redirect to the login page
header('Location: login.php');
exit();
?>

			</div>
<?php
			require 'inc/footer.php';
			echo '</body></html>';
			exit();
		}
	}	
?>
	<!-- Default Page Content (login form) -->
    <div class="container">
      <div class="row justify-content-center">
	  <div class="col-sm-12 col-md-5 col-lg-5">
	   <h1 sytle="text-align: center;" style="background-color: Dodgeblue"> Pwani University Sports Inventory</h1>
		<div class="card">
		  <div class="card-header">
			Login
		  </div>
		  <div class="card-body">
			<form action="">
			<div id="loginMessage"></div>
			  <div class="form-group">
				<label for="loginUsername">Username</label>
				<input type="text" class="form-control" id="loginUsername" name="loginUsername">
			  </div>
			  <div class="form-group">
				<label for="loginPassword">Password</label>
				<input type="password" class="form-control" id="loginPassword" name="loginPassword">
			  </div>
			  <button type="button" id="login" class="btn btn-primary">Login</button>
			  <a href="login.php?action=register" class="btn btn-success">Register</a> 
			  <!--<a href="login.php?action=resetPassword" class="btn btn-warning">Reset Password</a>-->
			  <button type="reset" class="btn">Clear</button>
			</form>
		  </div>
		</div>
		</div>
      </div>
    </div>
<?php
	require 'inc/footer.php';
?>
  </body>
</html>
