<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.List"%>
<%@ page import="org.hibernate.query.Query"%>
<%@ page import="org.hibernate.*"%>
<%@ page import="com.Helper.*"%>
<%@ page import="com.entities.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Note Taker: All Notes</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid m-0 p-0">
		<%@ include file="navbar.jsp"%>
		<br>
		<div class="container">
			<h2>All Notes - -</h2>

			<%
			Session s = FactoryProvider.getFactory().openSession();

			Query q = s.createQuery("from Note");
			List<Note> list = q.list();
			for (Note note : list) {
			%>
			<div class="card mt-3">
				<img class="car-itm-top p-4 mx-auto" src="img/post-it.png"
					style="max-width: 150px;">
				<div class="card-body">
					<h5 class="card-title"><%=note.getTitle()%></h5>
					<p class="card-text" style="text-align: justify;"><%=note.getContent()%></p>
					<%
					SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
					String strDate = formatter.format(note.getAddedDate());
					%>
					<i class="card-text text-primary">Added: <%= strDate %> </i>
					<div class="text-center m-2">
						<a href="edit.jsp?note_id=<%=note.getId()%>"
							class="btn btn-primary m-2">Edit</a> <a
							href="DeleteServlet?note_id=<%=strDate%>"
							class="btn btn-danger m-2">Delete</a>
					</div>
				</div>
			</div>

			<%
			}
			s.close();
			%>
		</div>
	</div>
</body>
</html>