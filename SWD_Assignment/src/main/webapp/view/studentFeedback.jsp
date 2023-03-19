<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/studentFeedback.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="wrapper">
		<div class="logo">
			<a href="#"><i class="fa fa-user" aria-hidden="true"></i></i></a>
		</div>
		<div class="user">
			<div class="welcome">
				<span>Hello user<p>mr A</p></span>
				<img src="../surtr.jpg" class="user-pic" onclick="toggleMenu()">
			</div>
			<div class="sub-menu-wrap" id="subMenu">
				<div class="sub-menu">
					<div class="user-info">
						<img src="../editProfile.png">
						<h2>Surtr</h2>
					</div>
					<hr>
					<a href="#" class="sub-menu-link"> <img src="../editProfile.png">
						<p>Edit Profile</p>
					</a> <a href="#" class="sub-menu-link"> <img src="../logout.png">
						<p>Logout</p>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="sidebar">
			<header>Student</header>
			<ul>
				<li><a href="#">Grade</a></li>
				<li><a href="#">Change Password</a></li>
				<li><a href="#">Course</a></li>
				<li><a href="#">Class</a></li>
				<li><a href="#">Payment</a></li>
				<li><a href="#">Feedback</a></li>
			</ul>
		</div>
		<div class="main">
			<main>
				<section class="header"></section>
				<section class="field">
					<table>
						<tbody>
							<tr>
								<td>
									<h1>Title</h1>
									<hr> <input type="text" name="feedbackTitle" />
								</td>
							</tr>
							<tr>
								<td>
									<h1>Feedback</h1>
									<hr> <textarea name="feedbackContent" rows="20" cols="100"> </textarea>
								</td>
							</tr>
							<tr>
								<td>
									<button type="button" class="send" onclick="addFeedback">Send</button>
									<button type="button" class="delete" onClick="deleteFeedback">Delete</button>
								</td>
							</tr>
						</tbody>
					</table>
				</section>
			</main>
		</div>
	</div>

	<script>
		let subMenu = document.getElementById("subMenu");

		function toggleMenu() {
			subMenu.classList.toggle("open-menu");
		}
	</script>
	<script type="text/javascript" src="../js/main.js"></script>
</body>
</html>