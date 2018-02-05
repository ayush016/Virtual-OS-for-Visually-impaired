<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    
<style>
  .speech {border: 1px solid #DDD; width: 300px; padding: 0; margin: 0}
  .speech input {border: 0; width: 240px; display: inline-block; height: 30px;}
  .speech img {float: right; width: 40px }
  #demo{color:white;}
  input {
background-color: white;

}

</style>
<body onload="testing('${requestScope.message}')">
<!-- Search Form -->


<form id ="submit" action="Voice_Add_Contact" method="post" enctype="multipart/form-data">
    <table>
			<tr>
				
				<td><input  type="hidden" id="r" name="recipient" size="50"/></td>
			</tr>
			<tr>
				
				<td><input type="hidden" id="s" name="subject" size="50"/></td>
			</tr>
			<tr>
				
				<td><input type="hidden" id="c" name="content"></textarea> </td>
			</tr>
			
			<tr>
				<td colspan="2" align="center"><input type="hidden" id ="submi" value="Send"/></td>
			</tr>
		</table>	
	</form>
<!--******************************************************************-->
<form id="add" method="post" action="demoServlet">
			<input type="hidden" id="f" name="username"/> <br/>
                        <input type="hidden" id="l" name="username1"/> <br/>
                        <input type="hidden" id="n" name="username2"/> <br/>
                        <input type="hidden" id="e" name="username3" value="110"/> <br/>
			

					
			<br/><br/>
			<input type="hidden"  onclick= "space();" value="Submit" />			
		</form>

<form id="Syn" method="post" action="Synonym">
			<input type="hidden" id="syno" name="Meaning"/> <br/>		
			<br/><br/>
			<input type="hidden" value="Synonym" />			
		</form>

<form id="news" method="post" action="News">
					
		</form>







<!--******************************************************************-->
  <div class="speech">

    <img onclick="startDictation('transcript'); setTimeout(test, 8000);" src="//i.imgur.com/cHidSVu.gif" />
    <body>
        
        <input type="text" name="userInput" onclick="setTimeout(test, 8000);" spellcheck="true" id="transcript" placeholder="Ask me anything" />

  </div>
<p id="demo">${requestScope.message}</div></p>

<!--<input type="text" placeholder="weather" onclick="nome.getTemperature()" id="weather">-->
<input type="hidden" id="confirm">
<input type="hidden" id="con">
</body>
<!-- HTML5 Speech Recognition API -->
<script src="Assistant.js"></script>
<script src="Extrainfo.js"></script>
<script>
  function space() {
       document.getElementById("e").value = document.getElementById("e").value.replace(/\s/g, "");
  }
    </script>
   

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"</script>
    

</html>
