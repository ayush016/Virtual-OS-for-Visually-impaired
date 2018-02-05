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
@WebServlet(urlPatterns = {"/del_memo"})
public class del_memo extends HttpServlet {
    
    
    
    
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
      out.write("        <title>Memo</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.1.4/semantic.min.css\">\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("          body {\n");
      out.write("            background-color: #FFFFFF;\n");
      out.write("          }\n");
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
      out.write("    <body>\n");
      out.write("        <div class=\"ui fixed inverted menu\">\n");
      out.write("    <div class=\"ui container\">\n");
      out.write("      <div href=\"#\" class=\"header item\">\n");
      out.write("        <i class=\"code icon\"></i>\n");
      out.write("        Memo\n");
      out.write("      </div>\n");
      out.write("        </div>\n");
      out.write("     \n");
      out.write("    </div>\n");
      out.write("        \n");
      out.write("            <div class=\"ui main text container segment\">\n");
      out.write("        <div class=\"ui huge header\">Delete Memo</div>\n");
      out.write("        \n");
      out.write("            \n");
      out.write("         ");
      out.write("\n");
      out.write("        \n");
      out.write("            ");

                int result;
                String sub,text;
                if(request.getParameter("DELETE")!=null)
            {
             
                //text=new String();
                 sub=new String();
            if(request.getParameter("sub")!=null){
            sub=request.getParameter("sub");
            }
             MEMO add=new MEMO();
            result=add.delMemo(sub);
            }
            
            
               
               // memo a=new memo();
                //a.setMemo("tyurp","gsdfdsjfgajdgsdhghfsgdsdagkffhsdhgff");
                
      out.write("\n");
      out.write("        \n");
      out.write("   <form class=\"ui form\" action=\"del_memo\" method=\"POST\">\n");
      out.write("            <div class=\"field\">\n");
      out.write("                <label>Subject</label>\n");
      out.write("                <input type=\"text\" name=\"sub\" value=\"\" />\n");
      out.write("            </div>    \n");
      out.write("           <input class=\"ui big violet basic button\" type=\"submit\" value=\"DELETE\" name=\"DELETE\" />\n");
      out.write("                <input class=\"ui big violet basic button\" type=\"reset\" value=\"RESET\" name=\"RESET\" />\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("          </div>      \n");
      out.write("        <form name=\"retHome\" action=\"memo.jsp\" method=\"POST\">\n");
      out.write("            <input class=\"ui big violet basic button\" type=\"submit\" value=\"BACK\" name=\"back\" />\n");
      out.write("        </form>\n");
      out.write("        \n");
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