<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change password</title>
<link rel="stylesheet" type="text/css"
	href="../css/changePass.css" />

</head>
<body>
	<div class="center">
	<div class="header">Change password</div>
	<form action="changepwd" method="POST">
		<div class="label">Current password</div>
		<input type="text" name="current_password">
		<div class="label">New password</div>
		<input type="password" name="new_password">
		<div class="label">Confirm new password</div>
		<input type="password" name="confirm_password">
		<input type="submit" value="Update password">
	</form>
	</div>
</body>
</html>