<%@page import="com.entities.Note"%>
<%@page import="com.Helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker: Edit Notes</title>

<%@ include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h2 class="container">Edit Your Note - -</h2>
		<br>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>

		<div class="container">
			<form action="UpdateServlet" method="post">
				<input value="<%=note.getId()%>" name="noteId" type="hidden" />
				<div class="form-group">
					<label for="title">Note Title</label> <input type="text"
						name="title" class="form-control" id="title"
						aria-describedby="emailHelp" required value="<%=note.getTitle()%>">
				</div>
				<div class="form-group">
					<label for="content">Note Content</label>
					<textarea id="content" class="form-control" name="content"
						style="height: 150px;" required ><%=note.getContent()%></textarea>
				</div>
				<div class=" text-center">
					<button type="submit" class="btn btn-success">Update</button>
				</div>
			</form>
		</div>

	</div>
</body>
</html>