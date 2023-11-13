package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Helper.FactoryProvider;
import com.entities.Note;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			//fetch title & content
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note note = new Note(title, content, new Date());
			
//			System.out.println(note.getId()+" "+note.getTitle()+" "+note.getContent()+" "+note.getAddedDate());
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			
			s.save(note);
			tx.commit();
			
			s.close();
			
			response.setContentType("text");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center'>Note is added successfully.</h1>");
			out.println("<h1 style='text-align:center'><a href='all_notes.jsp'>View all Notes</a></h1>");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
