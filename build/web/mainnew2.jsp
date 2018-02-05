<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Tablet Model</title>
		<meta name="description" content="Tablet model for java project" />
		<meta name="keywords" content="Java, JSP, Tablet model" />
		<meta name="author" content="Group 25" />
		<link rel="shortcut icon" href="../favicon.ico" /> 
		<link rel="stylesheet" type="text/css" href="component.css" />
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.10/components/button.min.css">
		<script src="js/modernizr.custom.js"></script>
		<style>
                #framewrap {
                    padding:10px;
                }
                #frame {
                    width:100%;
                    height:100%;
                    background-color:#fff;

                }
                iframe{
                    overflow:hidden;
                }

		</style>
        <script>
            var count=0;
			function changeColor()
			{
                            //alert("1");
                            
                            if(count==0){
                               // alert("2");
				$("#one").css("background","#666");
				$("#three").css("background","#666");
				$("#two").css("background","#333");
				$("#bl-work-section").css("background","#333");
				$("#contrast").css("background-color","#F63");
				$("#contrast").css("border-color","#666");
                               
                                count=1;
                            }
                            else{
                                //alert("3");
                                $("#one").css("background","#F06060");
				$("#three").css("background","#10A296");
				$("#two").css("background","#72CCA7");
				$("#bl-work-section").css("background","#FA987D");
				$("#contrast").css("background-color","#999");
				$("#contrast").css("border-color","#333");
                                count=0;
                            }
                 
			}
		</script>
	</head>
	<body>
            <div class="container">	
			<div id="bl-main" class="bl-main">
                            <section id="one" style="opacity:0.5">
					<a href="contacts.jsp">
					<div class="bl-box">
						<h2><img src="ic_stat_account_box.png" width="96" height="96" alt="ic_stat_account_box"/><br>CONTACTS</h2>
					</div>
					</a>
				</section>
				<section id="bl-work-section" style="opacity:0.5">
                                        <a href="timer.jsp">
					<div class="bl-box">						
                                                <h2><img src="ic_stat_access_alarms.png" width="96" height="96" alt="ic_stat_access_alarms"/><br>TIMER</h2>
					</div>
					</a>
				</section>
				<section id="two" style="opacity:0.5">
                                        <a href="memo.jsp">
					<div class="bl-box">
						<h2><img src="ic_stat_border_color.png" width="96" height="96" alt="ic_stat_border_color"/><br>MEMO</h2>
					</div>
					</a>
				</section>
                                <section id="three" style="opacity:0.5">
                                	<a href ="EmailForm.jsp">
					<div class="bl-box">
						<h2> <img src="ic_stat_mail_outline.png" width="96" height="96" alt="ic_stat_mail_outline"/><br>MAIL</h2>
					</div>
					</a>
				</section>
                                <section style="border-radius:50%;height:130px;width:130px;top:39%;left:45.4%;opacity:0.9">
                                    <div class="bl-box" >
                                         <div id="framewrap">
                                    <iframe id="ifrm" scrolling="no" allowtransparency="true" style="background: #333;border:4px outset #666;" src="cal.html" frameborder="0" height="400" width="400">
                                    </iframe></div>
                                    </div>
                                </section>
                                <section style="border-radius:10%;height:30px;width:30px;top:2%;left:97%;border:2px solid #333;background-color:#999;cursor:pointer" onClick="changeColor()" id="contrast">
                                    <div class="bl-box" >
                                    <img src="contrast.png" width="100%" height="100%">
                                    </div>
                                </section>
			</div>
		</div>
        
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
		<script src="../js/boxlayout.js"></script>
		<script>
			$(function() {
				Boxlayout.init();
			});
		</script>
		
	</body>
</html>
