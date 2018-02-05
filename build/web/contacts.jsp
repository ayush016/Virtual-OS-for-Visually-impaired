<%-- 
    Document   : index
    Created on : 11 Apr, 2017, 8:33:05 AM
    Author     : nakul
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contacts</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.1.4/semantic.min.css">
        <style type="text/css">
            
          .ui.menu .item img.logo {
            margin-right: 1.5em;
          }
          .main.container {
            margin-top: 7em;
          }
          .wireframe {
            margin-top: 2em;
          }
          .ui.footer.segment {
            margin: 5em 0em 0em;
            padding: 5em 0em;
          }
          i.icon {
            font-size: 2em;
          }
        </style>
         <script>
			var count=0;
			function changeColor()
			{            
                if(count==0){
                	$("body").css("background","#333");
					$("#contrast").css("background-color","#F63");
					$("#contrast").css("border-color","#666");
                    count=1;
                }
                else{
                	$("body").css("background","white");
					$("#contrast").css("background-color","#999");
					$("#contrast").css("border-color","#333");
                    count=0;
                }
			}
		</script>
    </head>
    <body bgcolor="#e3f2fd">
        <div class="ui fixed inverted menu">
            <div class="ui container">
                <div href="#" class="header item">
                    <i class="code icon"></i>
                    Contacts
                </div>
            </div>
        </div>
        <div class="ui main text container">
            <div class="button-group">
                <table>
                    <tr><td><form method="POST" action="add_contact"><input type="submit" value="ADD CONTACT" name="add contact" />
                            </form></td>
                    <td><form method="POST" action="del_contact"><input type="submit" value="DELETE CONTACT" name="del contact" />
                            </form></td>
                    <td><a href="main.jsp"><button>BACK</button></a></td>
                    </tr>
                </table>
            </div>
            <div class="ui top attached segment">
                <div class="panel-group" id="accordion">
                    <%!
                    public class Contacts
                   {
                        String databaseURL = "jdbc:mysql://localhost:3306/general";
                        String user = "root";
                        String password = "ayush";

                        Connection conn = null;
                        PreparedStatement selectContacts = null;
                        ResultSet result = null;

                        public Contacts()
                        {
                            try{
                                conn=DriverManager.getConnection(databaseURL,user,password);
                                selectContacts = conn.prepareStatement("SELECT f_name,l_name,num,email FROM contact order by f_name, l_name");
                            }
                            catch(SQLException e){
                                e.printStackTrace();
                            }
                        }

                        public ResultSet getContacts()
                        {
                            try{
                                result=selectContacts.executeQuery();
                            }
                            catch(SQLException e){
                                e.printStackTrace();
                            }
                            return result;
                        }
                    }
                    %>
                    
                    <%
                        Contacts contact = new Contacts();
                        ResultSet data = contact.getContacts();
                    %>
                    
                    <%  int i=0;
                        String panelRef;
                        String panelRefId;
                        while (data.next()){ 
                            i=i+1;
                            panelRef = "collapse"+Integer.toString(i);
                            panelRefId = "#collapse"+String.valueOf(i);
                    %>
                    <div class="panel">
                        <!--<script>document.write('<a data-toggle="collapse" data-parent="#accordion" href="'+panelRef+'">');</script> -->
                        <a data-toggle="collapse" data-parent="#accordion" onclick="this.href=panelRefId">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <%= data.getString("f_name") %> <%= data.getString("l_name") %>
                                </h4>
                            </div>
                        </a>
                         
                        <!--<script>document.write('<div id="'+panelRefId+'" class="panel-collapse collapse in">');</script>-->
                        <div onload="this.id=panelRef" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <table border="1" style="width:100%">
                                    <tr>
                                        <td style = "width:50%">Contact Number:</td>
                                        <td style = "width:50%"><%= data.getLong("num") %></td>
                                    </tr>
                                    <tr>
                                        <td style = "width:50%">Email Address:</td>
                                        <td style = "width:50%"><%= data.getString("email") %></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
                <div>
    	<section style="border-radius:10%;position:absolute;height:30px;width:30px;top:9%;left:97%;border:2px solid #333;background-color:#999;cursor:pointer" onClick="changeColor()" id="contrast">
        	<div class="bl-box" >
            	<img src="contrast.png" width="100%" height="100%" />
            </div>
        </section>
    </div>
                            		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    </body>
</html>
