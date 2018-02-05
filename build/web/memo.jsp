

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Memo</title>
        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.1.4/semantic.min.css">
        <style type="text/css">
          body {
            background-color: #FFFFFF;
          }
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
          #create-btn{
              left:45%;
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
        Memo
      </div>

    </div>
  </div>
        <div class="ui main text container">
   	<div class="ui huge header">All Notes</div>
    <div class="ui top attached segment">
    
        <%!
            public class memo
           {
            String databaseURL = "jdbc:mysql://localhost:3306/general";
            String user = "root";
            String password = "ayush";
            Connection conn =null;
            PreparedStatement inst=null;
            ResultSet res=null;

            memo()
            {
                try{
                    conn=DriverManager.getConnection(databaseURL,user,password);
                    inst=conn.prepareStatement("INSERT INTO memo(sub,content) VALUES(?,?)");
                    }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
            }
            

            

            public ResultSet showMemo()
            {
               try{
               inst=conn.prepareStatement("select * from memo");
               res=inst.executeQuery();
                }
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                return res;
            }


            }
            %>
        
            <%
                int result;
                String sub,text;
                if(request.getParameter("SUBMIT")!=null)
            {
             
                text=new String();
                 sub=new String();
            if(request.getParameter("sub")!=null){
            sub=request.getParameter("sub");
            }
            if(request.getParameter("cont")!=null){
            text=request.getParameter("cont");
            }
           // memo add=new memo();
            //result=add.setMemo(sub,text);
            }
                memo a=new memo();
                ResultSet res=a.showMemo();
               // memo a=new memo();
                //a.setMemo("tyurp","gsdfdsjfgajdgsdhghfsgdsdagkffhsdhgff");
                %>
        <div class="ui divided items">
        	                <%  while(res.next()){ %>

               
	 <div class="item">
	    
	    <div class="content">
	      <a style="color:blue" class="header"><%=res.getString("sub")%></a>

	      <div class="description">
	        <p><%=res.getString("content")%></p>
	      </div>
	      
	    </div>
	  </div>
	 <%}%>
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
        
        <center>
            
        <form action="add_memo" method="POST">
           <input id="create-btn" class="ui floated basic violet button" type="submit" value="CREATE" name="btn" />
        </form>
               
                
        <form action="del_memo" method="POST">
           <input class="ui floated basic violet button" type="submit" value="DELETE" name="delbtn" />
        </form>
                
            </center>
            		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
                    <a href="main.jsp"><button class="ui big violet basic button">Back</button></a>

    </body>
</html>
