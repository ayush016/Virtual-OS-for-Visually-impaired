/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



    var count1=0;
    var lock='0';
   extra = "1";
   var glo;
  function startDictation(id) {

    if (window.hasOwnProperty('webkitSpeechRecognition')) {

      var recognition = new webkitSpeechRecognition();

      recognition.continuous = false;
      recognition.interimResults = false;

      recognition.lang = "en-US";
      recognition.start();

      recognition.onresult = function(e) {
          
       if(id==='e')
       {
              document.getElementById(id).value
                                 = e.results[0][0].transcript.replace(/\s/g, "");
       }
       else
       {
           document.getElementById(id).value
                                 = e.results[0][0].transcript;
       }
        recognition.stop();
        count1=1;
       if(id==='r')
       {
           document.getElementById("demo").innerHTML="Enter the Subject";
           var msg1 = new SpeechSynthesisUtterance("Enter the Subject");
                    window.speechSynthesis.speak(msg1);
           startDictation('s');
           
       }
       if(id==='s')
       {
           document.getElementById("demo").innerHTML="Enter the Content";
           var msg1 = new SpeechSynthesisUtterance("Enter the Content");
                    window.speechSynthesis.speak(msg1);
           startDictation('c');
           
       }
       if(id==='c')
       {
           document.getElementById("demo").innerHTML="Ready to Send it?";
           var msg1 = new SpeechSynthesisUtterance("Ready to Send it?");
                    window.speechSynthesis.speak(msg1);
           startDictation('confirm');
       }
       if(id==='f')
       {
           document.getElementById("demo").innerHTML="Enter Last Name";
           
           var msg1 = new SpeechSynthesisUtterance("Enter Last Name");
                    window.speechSynthesis.speak(msg1);
           startDictation('l');
           
       }
       if(id==='l')
       {
           document.getElementById("demo").innerHTML="Enter Number";
           var msg1 = new SpeechSynthesisUtterance("Enter Number");
                    window.speechSynthesis.speak(msg1);
           startDictation('n');
           
       }
        if(id==='n')
       {
           document.getElementById("demo").innerHTML="Enter Email";
           var msg1 = new SpeechSynthesisUtterance("Enter Email");
                    window.speechSynthesis.speak(msg1);
           startDictation('e');
           
           
       }
       if(id==='e')
       {
           //var space = document.getElementById(id).value;
           //space = space.replace(" ", "");
           //document.getElementById(id).value = space;
           // document.getElementById("e").value = document.getElementById("e").value.replace(/\s/g, "");
           document.getElementById("add").submit();
            
           
       }
       if(id==='syno')
       {
           document.getElementById("Syn").submit();
       }
       if(id==='confirm')
       {
           if(document.getElementById("confirm").value!=='yes'&&document.getElementById("confirm").value!=='yeh'&&document.getElementById("confirm").value!=='yup')
           {
               document.getElementById("demo").innerHTML="Ok i won't Send it";
               var msg1 = new SpeechSynthesisUtterance("Ok i won't Send it");
                    window.speechSynthesis.speak(msg1);
           }
                    
           else
            {
                    document.getElementById("demo").innerHTML="Sending.....";
                    var msg1 = new SpeechSynthesisUtterance("Sending.....");
                    window.speechSynthesis.speak(msg1);
                    beta();
            }
        }
        if(id==='con')
       {
           if(document.getElementById("con").value!=='yes'&&document.getElementById("confirm").value!=='yeh'&&document.getElementById("confirm").value!=='yup')
           {
               document.getElementById("demo").innerHTML="Ok";
               var msg1 = new SpeechSynthesisUtterance("Ok");
                    window.speechSynthesis.speak(msg1);
           }
           else
           {
                    var q = glo;
                    var f="Searching Google" +glo ;
                    var msg1 = new SpeechSynthesisUtterance(f);
                    window.speechSynthesis.speak(msg1);
                    //document.getElementById('search').onclick = function() {
                    window.open('http://google.com/search?q='+q);
           }
       }
       if(id=='tim')
       {
           document.getElementById("clc").submit();
       }
      };
      
      recognition.onerror = function(e) {
        recognition.stop();
         if(id==='con')
       {
           if(document.getElementById("con").value!=='yes'&&document.getElementById("confirm").value!=='yeh'&&document.getElementById("confirm").value!=='yup')
           {
               document.getElementById("demo").innerHTML="Ok";
               var msg1 = new SpeechSynthesisUtterance("Ok");
                    window.speechSynthesis.speak(msg1);
           }
           else
           {
                    var q = glo;
                    var f="Searching Google" +glo ;
                    var msg1 = new SpeechSynthesisUtterance(f);
                    window.speechSynthesis.speak(msg1);
                    //document.getElementById('search').onclick = function() {
                    window.open('http://google.com/search?q='+q);
           }
       }
       if(id=='tim')
       {
           document.getElementById("clc").submit();
       }
      }
      
      
      
    
  }
  }
  
    function test()
        {
            //****************************************************
               	 var a=document.getElementById('transcript').value;
                 var y = a.split(' ').slice(0,3).join('+');
                 var z = a.split(' ').slice(0,2).join('+');
                 //var t = document.getElementById('transript').value;


                 var x = a.split(" ");
                 var i;
                 var count = "0";
                 var count_news = "0";
                 for(i = 0;i < x.length;i++)
                 {

                      if(x[i].toUpperCase()==='TIME')
                    {
    	
                       count++;
                    }
                     if(x[i].toUpperCase()==='NEWS')
                    {
    	
                       count_news++;
                    }
                 }
                 
        //*******************************************************         
                if(a.toUpperCase()==='HI'||a.toUpperCase()==='HEY'||a.toUpperCase()==='HELLO')
                {
                    var c = 'Hello!!';
                    var msg = new SpeechSynthesisUtterance(c);
                    window.speechSynthesis.speak(msg);
                    document.getElementById("demo").innerHTML=c;
                }
                else if(y.toUpperCase()==='SEARCH+ON+GOOGLE'||y.toUpperCase()==='SEARCH+ON+WEB')
                {
                    
                    var k = a.split(' ').slice(3,100).join(' ');
                    var q = k;
                    var f="Searching Google" +k ;
                    var msg1 = new SpeechSynthesisUtterance(f);
                    window.speechSynthesis.speak(msg1);
                    //document.getElementById('search').onclick = function() {
                    window.open('http://google.com/search?q='+q);
                }
                    //document.write(k);
                else if(z.toUpperCase()==="OPEN+WEBPAGE"||z.toUpperCase()==="OPEN+PAGE"||z.toUpperCase()==="OPEN WEBSITE")
                {
                    var n = a.split(" ");
                    var q = n[n.length - 1];
                    var f="Openning" +q ;
                    var msg1 = new SpeechSynthesisUtterance(f);
                    window.speechSynthesis.speak(msg1);
                    window.open('http://www.'+q+'.com');
                }
                else if(count!=="0")
                {
                var d = new Date(); // for now
                var h = d.getHours(); // => 9
                var m = d.getMinutes(); // =>  30
                var s = d.getSeconds(); // => 51
                f="Time is"+h+"hours"+m+"minutes"+s+"seconds";
                var msg1 = new SpeechSynthesisUtterance(f);
                window.speechSynthesis.speak(msg1);
                    if(h=== 0)
                    {
                        document.getElementById("demo").innerHTML="0"+h+":"+m+":"+s;
                    }
                    else
                    {
                        document.getElementById("demo").innerHTML=h+":"+m+":"+s;
                    }
                 }           
                else if(a.toUpperCase()==="GOOD MORNING")
                {
                        var d = new Date(); // for now
                        var h = d.getHours(); // => 9
                        var m = d.getMinutes(); // =>  30
                        var s = d.getSeconds(); // => 51
                        f1="Good morning? Really? it's "+h+":"+m+":"+s+" You Should say Good night!";
                        f2="Good Morning";
                        var msg1 = new SpeechSynthesisUtterance(f1);
                        var msg2 = new SpeechSynthesisUtterance(f2);
                        
                        if(h<=4)
                        {
                            
                            document.getElementById("demo").innerHTML="Good morning!!! Really? it's "+h+":"+m+":"+s+" You Should say Good night!";
                            window.speechSynthesis.speak(msg1);
                        }
                        else
                        {
                            
                             document.getElementById("demo").innerHTML="Good Morning";
                             window.speechSynthesis.speak(msg2);
                        }
                }
                else if(a.toUpperCase()==="SEND MAIL")
                {
                    //sessionStorage.setItem("recipient","ayush.shrivastava016@gmail.com" );
                    //sessionStorage.setItem("subject","yoyo" );
                    //sessionStorage.setItem("content","yehh" );
                    document.getElementById("demo").innerHTML="Enter the recipient";
                    var msg1 = new SpeechSynthesisUtterance("Enter the recipient");
                    window.speechSynthesis.speak(msg1);
                    startDictation('r');
                    
                    //startDictation('confirm');
                   // setTimeout(startDictation('s'), 5000);
                    //startDictation('c');
                    //while(lock==='0');
                    //document.getElementById("r").value = document.getElementById('cript').value;
                     //var person = prompt("Please enter your name", "Harry Potter");
                     //if (person !== null)
                     
                    //window.open('EmailForm.jsp');
                   //document.write(count1);


                }
                else if(a.toUpperCase()==="ADD CONTACT"||a.toUpperCase()==="ADD CONTACTS")
                {
                    document.getElementById("demo").innerHTML="Enter First Name";
                    var msg1 = new SpeechSynthesisUtterance("Enter First Name");
                    window.speechSynthesis.speak(msg1);
                    startDictation('f');
                }
                else if(z.toUpperCase()==="MEANING+OF")
                {
                     var mean = a.split(' ').slice(2,100).join(' ');
                    document.getElementById("syno").value=mean;
                    //startDictation('syno');
                    document.getElementById("Syn").submit();
                    
                }
                else if(a.toUpperCase()==="OPEN CALCULATOR")
                {
                    window.open("cal.html","_self");
                   
                }
                 else if(count_news!="0")
                 {
                    
                        document.getElementById("news").submit();
                          
                          //testing();
                         
                         
                   
                     //var x = document.getElementsByTagName("demo")[0].textContent;
                    
                     //var msg1 = new SpeechSynthesisUtterance(f);
                    //window.speechSynthesis.speak(msg1);
                     
                 }
                 else if(a.toUpperCase()==="START TIMER"||a.toUpperCase()==="OPEN TIMER")
                 {
                     window.open("timer.jsp","_self");
                 }
                else
                {
                    f="Am afraid i can't answer that. Should I search this on web?";
                    var msg1 = new SpeechSynthesisUtterance(f);
                    window.speechSynthesis.speak(msg1);
                    var b= "Am afraid i can't answer that.<br> Should I search this on web?";
                    glo = a;
                    document.getElementById("demo").innerHTML = b;
                    startDictation('con');
                }
		
        }
  
   
function beta()
{
    document.getElementById("submit").submit();
}
 function testing(t)
 {
        {        var msg1 = new SpeechSynthesisUtterance(t);
                    window.speechSynthesis.speak(msg1);
        }
 }
