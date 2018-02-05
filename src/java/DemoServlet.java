

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/demoServlet")
public class DemoServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
                String username1 = request.getParameter("username1");
                String username2 = request.getParameter("username2");
                String username3 = request.getParameter("username3");
		
                int result =0;
                
                Contact c=new Contact(username,username1,Long.parseLong(username2),username3);
                            
                           ContactDb contact = new ContactDb();
                            result = contact.setContacts(c);
                          String  x = "Contact Added"; 
		request.setAttribute("message", x);
		getServletContext().getRequestDispatcher("/index_backup.jsp").forward(request, response);
		/*PrintWriter writer = response.getWriter();
		
		String htmlRespone = "<html><h3>";
		htmlRespone += username3;		
			
		htmlRespone += "</h3></html>";
		
		// return response
		writer.println(htmlRespone);*/		
	}

}