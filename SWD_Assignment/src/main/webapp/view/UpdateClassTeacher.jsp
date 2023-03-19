<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/studentFeedback.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class="wrapper" style = "background-color:#8c8c90">
		<div class="logo">
			<a href="#"><img src ="../image/student-management-8.png" style=" max-width:80%; max-height:90px; margin-top:5%"></a>
		</div>
		<div class="user">
			<div class="welcome">
				<span>Hello user <p>mr A</p></span> <img src="../surtr.jpg"
					class="user-pic" onclick="toggleMenu()">
			</div>
			<div class="sub-menu-wrap" id="subMenu">
				<div class="sub-menu">
					<div class="user-info">
						<img src="../image/editProfile.png">
						<h2>Mr A</h2>
					</div>
					<hr>
					<a href="#" class="sub-menu-link"> <img src="../image/surtr.jpg">
						<p>Edit Profile</p>
					</a> <a href="#" class="sub-menu-link"> <img src="../image/surtr.jpg">
						<p>Logout</p>
					</a>
				</div>
			</div>
		</div>
	</div>
		<div class="content">
		<div class="sidebar" style = "background-color: #8c8c90;">
			<header  >School account</header>
			<ul>
				
				<li><a href="StudentList">Manage Student</a></li>
				<li><a href="TeacherList">Manage Teacher</a></li>
				<li><a href="#">Manage Course</a></li>
				<li><a href="ClassList">Manage Class</a></li>
				<li><a href="#">Manage Account</a></li>
			</ul>
		</div>
			<main>
				<section class="header"></section>
				<section class="field">
					<form id="accountUpdateForm" action="../account/update" method="POST">
						<table>
							<tbody>
								<tr>
									<td><input type="hidden" name="accountId" value="${id}" />
									</td>
								</tr>
								<tr>
									<td>
										<h1>Username</h1>
										<hr> <input type="text" name="username" />
									</td>
								</tr>
								<tr>
									<td>
										<h1>Username</h1>
										<hr> <input type="text" name="username" />
									</td>
								</tr>
							
								
								<tr>
									<td>
										<h1>Teacher</h1>
										<hr> <select id="role" name="teacher">
											<option value="1">1.1</option>
											<option value="2">2.2</option>
											<option value="3">3.3</option>
									</select>
									</td>
								</tr>
								<tr>
									<td>
										<button type="button" class="send" onclick="updateAccount()">Save</button>
										<button type="button" class="delete" onClick="updateAccount()">Delete</button>
									</td>
								</tr>
							</tbody>
						</table>
					</form>

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
	<script type="text/javascript">
		function updateAccount() {
			document.getElementById("accountUpdateForm").submit();
		}
		function deleteFeedback() {
			window.location.href = 'feedback/delete';
		}
	</script>
</body>
</html>