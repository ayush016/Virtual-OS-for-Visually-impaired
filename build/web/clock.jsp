<%-- 
    Document   : clock.jsp
    Created on : 14 Apr, 2017, 2:07:36 AM
    Author     : rajat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Timer</title>
         <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.1.4/semantic.min.css">
        <style type="text/css">
          body {
            background-color: #FFFFFF;
          }
          .ui.menu .item img.logo {
            margin-right: 1em;
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
            font-size: 1em;
          }
          #txt{
              font-size: 30px;
          }
        </style>
<script>
<!--
<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "10";
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.forma.clock.value = timeout;
window.setTimeout( "timer()", 1000 );
}
else
{
document.forma.clock.value = "Time over";
///disable submit-button etc
}
}
//-->
</script>
<body>
 
        <div class="ui main text container">
   	<div class="ui huge header">Seconds Remaining</div>
    <div class="ui top attached segment">
        
<form class="ui form" action="<%=request.getRequestURL()%>" name="forma">
    <center>
    <input id="txt" type="text" name="clock" value="<%=clock%>" style="border:0px solid white">
    </center>
</form>
</div>
        </div>
     <form name="retClock" action="timer.jsp" method="POST">
            <input class="ui big violet basic button" type="submit" value="BACK" name="back" />
        </form>
<script>
<!--
timer();
//-->
</script>
</body></html>