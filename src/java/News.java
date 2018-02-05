

import java.io.IOException;
import java.io.PrintWriter;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/News")
public class News extends HttpServlet {

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		/*String username = request.getParameter("username");
                String username1 = request.getParameter("username1");
                String username2 = request.getParameter("username2");
                String username3 = request.getParameter("username3");*/
		//String q = request.getParameter("New");
               
                Document document = Jsoup.connect("https://www.ndtv.com/latest").get();

        
            //final String title = document.select(".synonym").text();
            int i = 1;
           Elements els = document.getElementsByClass("new_storylising_contentwrap");
             Elements links = els.select("a[href]");
             String x = links.attr("title");
             //int count=0;
             //for(Element x:links){
                //System.out.println(x);
                /*Contact c=new Contact(username,username1,Long.parseLong(username2),username3);
                            
                           ContactDb contact = new ContactDb();
                            result = contact.setContacts(c);*/
                request.setAttribute("message", x);
		getServletContext().getRequestDispatcher("/index_backup.jsp").forward(request, response);
		/*PrintWriter writer = response.getWriter();
		
		String htmlRespone = "<html><h3>";
		htmlRespone += x;		
			
		htmlRespone += "</h3></html>";
		
		// return response
		writer.println(htmlRespone);*/		
	}

}