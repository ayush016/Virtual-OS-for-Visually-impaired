/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
/**
 *
 * @author rajat
 */
@WebServlet(urlPatterns = {"/del_contact"})
public class del_contact extends HttpServlet {


    
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      response.setHeader("X-Powered-By", "JSP/2.3");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
Class.forName("com.mysql.jdbc.Driver");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add New Contacts</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.1.4/semantic.min.css\">\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("          .ui.menu .item img.logo {\n");
      out.write("            margin-right: 1.5em;\n");
      out.write("          }\n");
      out.write("          .main.container {\n");
      out.write("            margin-top: 7em;\n");
      out.write("          }\n");
      out.write("          .wireframe {\n");
      out.write("            margin-top: 2em;\n");
      out.write("          }\n");
      out.write("          .ui.footer.segment {\n");
      out.write("            margin: 5em 0em 0em;\n");
      out.write("            padding: 5em 0em;\n");
      out.write("          }\n");
      out.write("          i.icon {\n");
      out.write("            font-size: 2em;\n");
      out.write("          }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#e3f2fd\">\n");
      out.write("        <div class=\"ui fixed inverted menu\">\n");
      out.write("            <div class=\"ui container\">\n");
      out.write("                <div href=\"#\" class=\"header item\">\n");
      out.write("                    <i class=\"code icon\"></i>\n");
      out.write("                    Add Contacts\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"ui main text container\">\n");
      out.write("            <div class=\"ui top attached segment\">\n");
      out.write("                <div class=\"panel-group\" id=\"accordion\">\n");
      out.write("                    ");
      out.write("\n");
      out.write("                    \n");
      out.write("                    ");

                        int result=0,id=0;
                        
                        ContactDb contact = new ContactDb();
                        ResultSet data = contact.getContacts();
                        
                        if (request.getParameter("submit") != null){
                            if (request.getParameter("contact") != null){
                                id = Integer.parseInt(request.getParameter("contact"));
                                result = contact.deleteContacts(id);
                            }
                        }
                    
      out.write("\n");
      out.write("                        \n");
      out.write("                    <form name=\"addcontact\" action=\"del_contact\" method=\"POST\">\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Select Contact</td>\n");
      out.write("                                <td><select name=\"contact\">\n");
      out.write("                                    ");
 
                                    while (data.next()){
                                    
      out.write("\n");
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print( data.getInt("c_id") );
      out.write('"');
      out.write('>');
      out.print( data.getString("f_name") );
      out.write(' ');
      out.print( data.getString("l_name") );
      out.write("</option>\n");
      out.write("                                    \n");
      out.write("                                    ");
 } 
      out.write("\n");
      out.write("                                </select></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                        <input type=\"reset\" value=\"Clear\" name=\"clear\">\n");
      out.write("                        <input type=\"submit\" value=\"Delete\" name=\"submit\" onclick=\"location.href='del_contact'\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <a href=\"contacts.jsp\"><button><< Go Back</button></a>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
