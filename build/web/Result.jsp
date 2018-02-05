<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	 "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Result</title>
</head>
<body onload = "five('${requestScope.message}')">
	<center>
		<h3>${requestScope.message}</h3>
                <h4 id="timer"></h4>
	</center>
</body>
<script>
    function five(f)
    {
        //f="Redirecting please wait....";
        var msg1 = new SpeechSynthesisUtterance(f);
        window.speechSynthesis.speak(msg1);
        document.getElementById("timer").innerHTML='Redirecting please wait....5';
        setTimeout(four, 1000);
        
    }
    function four()
    {
        document.getElementById("timer").innerHTML='Redirecting please wait....4';
        setTimeout(three, 1000);
    }
    function three()
    {
        document.getElementById("timer").innerHTML='Redirecting please wait....3';
        setTimeout(two, 1000);
    }
    function two()
    {
        document.getElementById("timer").innerHTML='Redirecting please wait....2';
        setTimeout(one, 1000);
    }
    function one()
    {
        document.getElementById("timer").innerHTML='Redirecting please wait....1';
        window.open("EmailForm.jsp","_self");
        
    }
</script>
</html>