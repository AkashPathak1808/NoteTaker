<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker: Add Notes</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h2 class="container">Please Fill Your Note Details - -</h2>
		<br>

		<!--this is add form  -->
		<div class="container">
			<form action="SaveNoteServlet" method="post">
				<div class="form-group">
					<label for="title">Note Title</label> <input type="text"
						name="title" class="form-control" id="title"
						aria-describedby="emailHelp" placeholder="Enter Your Note.."
						required>
				</div>
				<div class="form-group">
					<label for="content">Note Content</label>
					<textarea id="content" class="form-control" name="content"
						placeholder="Enter Your Content Here" style="height: 150px;"
						required></textarea>
				</div>
				<div class=" text-center">
					<button type="submit" class="btn btn-primary">Add</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>