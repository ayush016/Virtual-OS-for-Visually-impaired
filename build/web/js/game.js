var o =0;
i=0;
var one = new Audio();
		var two = new Audio();
		var three = new Audio();
		var four = new Audio();
		var five = new Audio();
		var six = new Audio();
		var seven = new Audio();
		var eight = new Audio();
		var nine = new Audio();
		var error = new Audio();
        //bleep[0].src = "sounds/1.mp3";
		one.src = "sounds/1.mp3";
		two.src = "sounds/2.mp3";
		three.src = "sounds/3.mp3";
		four.src = "sounds/4.mp3";
		five.src = "sounds/5.mp3";
		six.src = "sounds/6.mp3";
		seven.src = "sounds/7.mp3";
		eight.src = "sounds/8.mp3";
		nine.src = "sounds/9.mp3";
		error.src="sounds/beep.mp3";
        function loadContent1(){
            one.play(); // Play button sound now
            
        }
		function loadContent2(){
            two.play(); // Play button sound now
            
        }
		function loadContent3(){
            three.play(); // Play button sound now
            
        }
		function loadContent4(){
            four.play(); // Play button sound now
            
        }
		function loadContent5(){
            five.play(); // Play button sound now
            
        }
		function loadContent6(){
            six.play(); // Play button sound now
            
        }
		function loadContent7(){
            seven.play(); // Play button sound now
            
        }
		function loadContent8(){
            eight.play(); // Play button sound now
            
        }
		function loadContent9(){
            nine.play(); // Play button sound now
            
        }
		function loadError(){
            error.play(); // Play button sound now
            
        }


var Sudoku = {

    //-------------------------------GAME DATA---------------------------------
    //the Sudoku game data, game can be different if the data changes
    matrix:[  [[],[6],[],[1],[],[4],[],[5],[]],
        [[],[],[8],[3],[],[5],[6],[],[]],
        [[2],[],[],[],[],[],[],[],[1]],
        [[8],[],[],[4],[],[7],[],[],[6]],
        [[],[],[6],[],[],[],[3],[],[]],
        [[7],[],[],[9],[],[1],[],[],[4]],
        [[5],[],[],[],[],[],[],[],[2]],
        [[],[],[7],[2],[],[6],[9],[],[]],
        [[],[4],[],[5],[],[8],[],[7],[]]
    ],

    //-----------------------------START FUNCTION-------------------------------
    //render game board and input Sudoku numbers
    start: function(){

        //render game board
        for (var i = 0; i < 9; i++) {
            var row = $('<tr></tr>');
            for(var j = 0; j < 9; j++){
                var sBlock = $('<td class="sBox edit"></td>');
                sBlock.attr('id','Block'+'_'+ i + '_' + j).text(Sudoku.matrix[i][j]);   //store the block location in the id
                row.append(sBlock);
                if(Sudoku.matrix[i][j] != ''){  //the number in block with edit class can be changed
                    sBlock.removeClass('edit');
                }
								
                var groups = Math.floor(Math.sqrt(9));  //use different color to distinguish different groups
                var gA = Math.floor(i / groups);
                var gB = Math.floor(j / groups);
                if (gA % 2 == gB % 2) {
                    sBlock.addClass('sGroup');
                }else{
                    sBlock.addClass('sGroup2');
                }
            
            }
			$('#sTable').append(row);
        }
    },

    //------------------------------------PLAY FUNCTION-------------------------
    //handle click event in the game playing
    play : function(){
        $('.sBox').click(function(event){   //if the block in the table been clicked
            event.stopPropagation();
            if($(this).hasClass('edit') == true){   //if it's a editable block
                $('.selectActive').removeClass('selectActive');
                $(this).addClass('selectActive');
                //y=1;
				//alert("upar");
				
				for(y=1;y<=9;y++)
				{
					$("#x"+y).css("display","block");
					if(y!=value && value!=0)
					{
						$("#x"+y).css("display","none");
					}
				}
				//alert("niche");
				if (!navigator.userAgent.match(/mobile/i)) {    //if it's not a mobile device, show select panel around where the event happens
                    $('.select').css('top',event.pageY).css('left',event.pageX).addClass('active');
                }else{                                          //if it's a mobile device, always show the select panel in the middle
                    $('.select').css('top','40%').css('left','50%').addClass('active');
                }
				
				
            }
        });

        $('.select div').click(function(){  //if the select panel been clicked
            var thisInput = $(this).text();
            var location = $('.selectActive').attr('id').split('_');    //analyze the id to get the location of the block selected
			
            var thisRow = parseInt(location[1]);    //the x-axis of the block
            var thisCol = parseInt(location[2]);    //the y-axis of the block
			
			var Col=thisCol+1;
			var msg=new SpeechSynthesisUtterance(thisRow+1+","+Col);
			window.speechSynthesis.speak(msg);
			
            Sudoku.matrix[thisRow][thisCol] = parseInt(thisInput);  //update the input to the data matrix

            //check the number input
            $('.sWrong').removeClass('sWrong');
            Sudoku.compare();   //check the input by calling the compare function

            //after select a number
            $('.selectActive').text(parseInt(thisInput));            //set the number to block
            $('.selectActive').removeClass('selectActive');
            $('.select').removeClass('active');
        });

        $('html').click(function(){     //the user can click any other part of the page (like background) to close the select panel
            $('.selectActive').removeClass('selectActive');
            $('.select').removeClass('active');
        })

    },

    //--------------------------------COMPARE FUNCTION--------------------------
    //compare numbers on the board to find potential mistake
    compare : function(){
        var matrix = Sudoku.matrix;
		var count=0;
         for(var i=0; i<9; i++){
             for(var j=0; j<9; j++){
                 for(var h=0; h<9; h++){
                     if(
                         (matrix[i][j] == matrix[i][h] && j != h)   //valid rows in Sudoku rules
                         || (matrix[i][j] == matrix[h][j] && i != h)    //valid cols in Sudoku rules
                       ){
                         $('#Block_'+i+'_'+j).addClass('sWrong');   //if the number is wrong, show it with a red background
						 count=1;
                     };
					 
                 for(var k = 0; k < 3; k++) //valid groups in Sudoku rules
                     for(var l = 0; l < 3; l++)
                         if(
                            (matrix[i][j] == matrix[parseInt(i / 3) * 3 + k][parseInt(j / 3) * 3 + l])
                            && (!(i == parseInt(i / 3) * 3+k && j == parseInt(j / 3) * 3+l))
                            ){
                                 $('#Block_'+i+'_'+j).addClass('sWrong');
                             		count=1;
							 };
                 }
             }
         }
		 if(count==1)
		 {
			loadError();
		 }
    }
};

$(document).ready(function(){
    Sudoku.start();
    Sudoku.play();
});

//---------Checks if Sudoku is filled correctly---------//
		function check()
		{
			alert("GAME OVER!!");
		}
		
		function hint()
		{
			
			var hint=["1,1 \n 9","1,3 \n 3","1,5 \n 7","1,7 \n 2","1,9 \n 8","2,1 \n 1","2,2 \n 7","2,5 \n 2","2,8 \n 4","2,9 \n 9","3,2 \n 5","3,3 \n 4","3,4 \n 6","3,5 \n 8","3,6 \n 9","3,7 \n 7","3,8 \n 3","4,2 \n 2","4,3 \n 1","4,5 \n 3","4,7 \n 5","4,8 \n 9","5,1 \n 4","5,2 \n 9","5,4 \n 8","5,5 \n 5","5,6 \n 2","5,8 \n 1","5,9 \n 7","6,2 \n 3","6,3 \n 5","6,5 \n 6","6,7 \n 8","6,8 \n 2","7,2 \n 8","7,3 \n 9","7,4 \n 7","7,5 \n 1","7,6 \n 3","7,7 \n 4","7,8 \n 6","8,1 \n 3","8,2 \n 1","8,5 \n 4","8,8 \n 8","8,9 \n 5","9,1 \n 6","9,3\n 2","9,5 \n 9","9,7 \n 1","9,9 \n 3"];
				var hnt=new SpeechSynthesisUtterance(hint[i]);
				window.speechSynthesis.speak(hnt);
				i++;	
		}
		var value=0;
		function go()
		{
			value=$("#txt").val();
			alert(value);
		}
		function go1()
		{
			value=0;
			$("#txt").val(0);
			//alert();
		}
                function startDictation(id) {

                    if (window.hasOwnProperty('webkitSpeechRecognition')) {

                     var recognition = new webkitSpeechRecognition();

                        recognition.continuous = false;
                        recognition.interimResults = false;

                        recognition.lang = "en-US";
                        recognition.start();

                        recognition.onresult = function(e) {
                            document.getElementById(id).value
                                 = e.results[0][0].transcript;
                         recognition.stop();
                         go();
                         };
      
      recognition.onerror = function(e) {
        recognition.stop();
      };
  }
                }