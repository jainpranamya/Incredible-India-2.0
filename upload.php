<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>Additions</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
	<script src="viewportchecker.js"></script>
	<link rel="stylesheet" type="text/css" href="starrating.css">
	<link rel="stylesheet" type="text/css" href="Design1.css">
	<style type="text/css">

	</style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">

<!--enctype="multipart/form-data" used when some binary data like images or files needs to be transferred or uploaded to the webpage-->
	<div id="upload" class="w3-container w3-mobile w3-brown" style="margin-top:100px;">
		<nav class="navbar navbar-inverse w3-opacity-min w3-top w3-mobile navbar-fixed-top" data-spy="affix" data-offset-top="197">
				<div class="container-fluid w3-xlarge w3-black w3-mobile">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle w3-mobile" data-toggle="collapse" data-target="#myNavbar">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span> 
							<span class="icon-bar"></span>							
						</button>
						<a class="navbar-brand" href="index.php"><img class="w3-ripple w3-margin-right w3-hover-none w3-hover-text-white" src="Logo.jpg"></a>
					</div>
					<div class="collapse navbar-collapse w3-right w3-mobile" id="myNavbar">
						<ul class="nav navbar-nav w3-center nav-pills">
							<li><a href="index.php#Home" class="w3-hover-opacity-off w3-mobile w3-button w3-margin-right w3-ripple w3-text-amber"><i class="fa fa-home"></i>Home</a></li>
							<li><a href="index.php#Unexplored" class="w3-ripple w3-hover-opacity-off w3-mobile w3-button w3-margin-right w3-text-amber">Unexplored</a></li>
							<li class="dropdown w3-mobile">
								<a class="dropdown-toggle w3-mobile w3-hover-opacity-off w3-button w3-margin-right w3-ripple w3-text-amber" data-toggle="dropdown" href="#">Interests<span class="caret"></span></a>
								<ul class="dropdown-menu w3-mobile w3-large">
									<li><a href="index.php#Purpose">Purpose</a></li>
									<li><a href="index.php#Topo">Topography</a></li>
									<li><a href="index.php#Season">Season of Visit</a></li>
								</ul>
							</li>
							<li><a href="#upload" class="w3-ripple w3-mobile w3-hover-opacity-off w3-button w3-margin-right w3-text-amber ">New Additions</a></li>
							<li><a href="index.php#Footer" class="w3-ripple w3-mobile w3-hover-opacity-off w3-button w3-margin-right w3-text-amber ">Enquire</a></li>
						</ul>
					</div>
				</div>
			</nav>
		<div class="w3-col s9 w3-row-padding w3-mobile w3-light-grey " style="height:600px;overflow-y:scroll;">
			<?php
						$con = mysql_connect('localhost','root','');
						if($con){
						 mysql_select_db('incredible_india', $con);
						 $query = "SELECT * FROM feedback WHERE permission=1";
					  
						 $result = mysql_query($query);

						 if($result){
							while($row = mysql_fetch_array($result)){
								$img = $row["file_name"];
								$pname = $row["place_name"];
								$user_name = $row["user_name"];
								 
								echo "
								<div class='w3-col s3 w3-mobile' style='height:200px'>
									<div class='w3-card-2 w3-display-container w3-hover-opacity w3-mobile'>
										<div class='post'>
											
												<img src='uploads/$img' alt='$' style='width:100%; height:200px' >
											
											<div class='w3-display-middle w3-display-hover w3-xlarge w3-mobile'>
												
											</div>
											<div class='w3-container w3-mobile'>
												<h5>$pname</h5>
											</div>
											<div class='w3-center'>
												Shared by:
												$user_name
											</div>
										</div>
									</div>
								</div>";
								
							}
						 }
				 }
			?>
			<!--display the validated places-->
		</div>
		<div class="w3-col s3 w3-display-right w3-mobile">
				<form action="upload.php" method="post" enctype="multipart/form-data" >
					Care to share your experience!
					<input class="w3-input w3-animate-input w3-text-black w3-padding-8 w3-mobile" type="text" placeholder="Name" required name="user_name"/>
					<br>
					<input class="w3-input w3-animate-input w3-text-black w3-padding-8 w3-mobile" type="text" placeholder="Email" required name="email_id"/>
					<br>
					<input class="w3-input w3-animate-input w3-text-black w3-padding-8 w3-mobile" type="text" placeholder="Place Name" required name="place_name"/>
					<br>
					<input class="w3-input w3-animate-input w3-text-black w3-padding-8 w3-mobile" type="file" placeholder="Choose File" required name="file_name"/>
					<button class="w3-button w3-bar-item w3-block w3-green w3-padding w3-margin" style="width:100px" type="submit"><i class="fa fa-paper-plane"></i> Submit</button>
				</form>

				<?php
				if($_SERVER['REQUEST_METHOD']==='POST'){
				   if(isset($_FILES['file_name'])){

					  $user_name=$_POST['user_name'];
					  //echo $user_name;
					  $place_name=$_POST['place_name'];
					  //echo $place_name;
					  $email_id=$_POST['email_id'];
						
					  $errors= array();
					  $file_name = $_FILES['file_name']['name'];
					  $file_size =$_FILES['file_name']['size'];
					  $file_tmp =$_FILES['file_name']['tmp_name'];
					  $file_type=$_FILES['file_name']['type'];
					  
					  $file_ext=strtolower(end(explode('.',$_FILES['file_name']['name'])));
					  
					  $extensions= array("jpeg","jpg","png");
					  
					  if(in_array($file_ext,$extensions)=== false){
						 $errors[]="extension not allowed, please choose a JPEG or PNG file.";
					  }

					  if (file_exists("uploads/".$file_name)) {
						   $errors[]= "Sorry, file already exists.";
						}

					  if(empty($errors)){
						 move_uploaded_file($file_tmp,"uploads/".$file_name);
						 $con = mysql_connect('localhost','root','');
						  if($con){
						  mysql_select_db('incredible_india', $con);
						  mysql_query("INSERT INTO feedback (user_name,place_name,file_name,email_id) VALUES ('$user_name','$place_name','$file_name','$email_id')"); 
						  }
						  echo "Thank you for sharing! Your post will be posted on approval.";
					  }else{
						 print_r($errors);
					  } 
				   }
				 }
				?>
	</div>
</div>
</body>
</html>