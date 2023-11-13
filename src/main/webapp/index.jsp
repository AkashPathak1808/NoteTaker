<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Note Taker: Home page</title>

<%@ include file="all_js_css.jsp"%>

</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp"%>
		<div class="container">
			<div class="card my-5 p-3">
				<img src="img/post-it.png" class="img-fluid mx-auto"
					style="max-width: 200px">
				<i class=" mt-2 p-4 text-center">The note-taker records every new thought, fact, or topic on a separate line. All information is recorded but is not organized into major and minor topics.</i>
				<h3 class="text-primary text-center my-4" style="font-family: 'Times-new-roman'" >START TAKING YOUR
					NOTES</i>
				<div class="container text-center mt-4">
					<button class="btn btn-outline-primary" onclick="window.location.href = 'add_notes.jsp'">Start Here - ></button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>