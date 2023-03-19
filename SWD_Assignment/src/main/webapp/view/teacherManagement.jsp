<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Management</title>
<link rel="stylesheet" href="../css/accountManager.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/accountManager.css" />
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
		<div class="main">
			<main>
				<section class="header">
					<div class="items-controller">
						<h5>Show</h5>
						<select name="" id="itemperpage">
							<option value="04">04</option>
							<option value="05">05</option>
							<option value="08" selected>08</option>
							<option value="10">10</option>
							<option value="15">15</option>
						</select>
						<h5>Per Page</h5>
					</div>
					<div class="search">
						<h5>Search</h5>
						<input type="text" name="" id="search" placeholder="search">
					</div>
				</section>
				<section class="field">
					<table>
						<thead>
							<tr>
								
								<th>Teacher ID</th>
								<th>Teacher Name</th>
								<th>Account ID</th>
								<th>SubjectId</th>								
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${teachers}" var="teacher">
							<tr>
								<td>${teacher.teacherId}</td>
								<td>${teacher.teacherName}</td>
								<td>${teacher.accountId}</td>
								<td>${teacher.subjectId}</td>
								<td><a href = "UpdateTeacher?teacherId=${teacher.teacherId} "> <i class="fa fa-edit"></i></a></td>
							</tr>
						</c:forEach>
							<!-- <tr>
								<td><input type="checkbox"></td>
								<td>02</td>
								<td>Garrett Winters</td>
								<td>Accountant</td>
								<td>@gakyo</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>03</td>
								<td>Ashton Cox</td>
								<td>Junior Technical Author</td>
								<td>@Francisco</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>04</td>
								<td>Cedric Kelly</td>
								<td>Senior Javascript Developer</td>
								<td>Edinburgh</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>05</td>
								<td>Airi Satou</td>
								<td>Accountant</td>
								<td>airxam</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>06</td>
								<td>Brielle Williamson</td>
								<td>Integration Specialist</td>
								<td>@Williamson</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>07</td>
								<td>Herrod Chandler</td>
								<td>Sales Assistant</td>
								<td>Francisco</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>08</td>
								<td>Rhona Davidson</td>
								<td>Integration Specialist</td>
								<td>Rohaxzam</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>09</td>
								<td>Colleen Hurst</td>
								<td>Javascript Developer</td>
								<td>@Francisco</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>10</td>
								<td>Sonya Frost</td>
								<td>Software Engineer</td>
								<td>Oedinburgh</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>11</td>
								<td>Jena Gaines</td>
								<td>Office Manager</td>
								<td>jana_max</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>12</td>
								<td>Quinn Flynn</td>
								<td>Support Lead</td>
								<td>Quinn_feri</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>13</td>
								<td>Charde Marshall</td>
								<td>Regional Director</td>
								<td>Charcisco</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>14</td>
								<td>Haley Kennedy</td>
								<td>Senior Marketing Designer</td>
								<td>haleywods</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr>
							<tr>
								<td><input type="checkbox"></td>
								<td>15</td>
								<td>Tatyana Fitzpatrick</td>
								<td>Regional Director</td>
								<td>tatyanay</td>
								<td><input type="checkbox"></td>
								<td><i class="fa fa-edit"></i> | <i class="fa fa-trash"></i></td>
							</tr> -->
						</tbody>
					</table>
					<div class="bottom-field">
						<ul class="pagination">
							<li class="prev"><a href="#" id="prev">&#139;</a></li>
							<!-- page number here -->
							<li class="next"><a href="#" id="next">&#155;</a></li>
						</ul>
					</div>
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