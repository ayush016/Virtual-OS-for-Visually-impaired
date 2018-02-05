<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Send an e-mail with attachment</title>
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
          
         
        </style>
<script>
    function myFunction(){
    document.getElementById("r").value = sessionStorage.getItem("recipient");
    document.getElementById("s").value = sessionStorage.getItem("subject");
    document.getElementById("c").value = sessionStorage.getItem("content");
    //document.write(sessionStorage.getItem("recipient"));
}
</script>
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
<title>Send an e-mail with attachment</title>
</head>
<body>
    <div class="ui fixed inverted menu">
    <div class="ui container">
      <div href="#" class="header item">
        <i class="code icon"></i>
        Mail
      </div>
        </div>
     
    </div>
    <div class="ui main text container segment">
        <div class="ui huge header">E-mail</div>
        <form class="ui form" action="SendMailServelet" method="post" enctype="multipart/form-data">
		<table border="0" width="60%" align="center">
			<caption><h2>Send New E-mail</h2></caption>
	
		
			<tr>
				<td width="50%">Recipient address </td>
				<td><input type="text" id="r" name="recipient" size="50"/></td>
			</tr>
			<tr>
				<td>Subject </td>
				<td><input type="text" id="s" name="subject" size="50"/></td>
			</tr>
			<tr>
				<td>Content </td>
				<td><textarea type="text" id="c" name="content" rows="10" cols="39" ></textarea> </td>
			</tr>
			<tr>
				<td>Attach file </td>
				<td><input type="file" name="file" size="50" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Send"/></td>
			</tr>
		</table>	
	</form> 
    </div>
     <div>
    	<section style="border-radius:10%;position:absolute;height:30px;width:30px;top:9%;left:97%;border:2px solid #333;background-color:#999;cursor:pointer" onClick="changeColor()" id="contrast">
        	<div class="bl-box" >
            	<img src="contrast.png" width="100%" height="100%" />
            </div>
        </section>
    </div>
        <a href="send.jsp"><button class="ui big violet basic button">Sent Mail</button></a>
            <a href="main.jsp"><button class="ui big violet basic button">Back</button></a>

    <!--<button onclick="myFunction()">Try it</button>-->
    		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
</body>
</html>