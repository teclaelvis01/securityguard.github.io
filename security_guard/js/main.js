$(function(){
	function capture(){
		console.log("Hola");
	}

    var dials = $(".dials ol li");
    var index;
    var number = $(".number");
	var comentario = $("#comentario");
	var catch_number = "";
    var total;
	var total_catch;

    dials.click(function(){

        index = dials.index(this);
		console.log(index);
		//console.log(number.append(index+1));
        if(index == 9){

            number.append("*");
			catch_number = catch_number + "*";
        }else if(index == 10){

            number.append("*");
			catch_number = catch_number + "0";
			
        }else if(index == 11){

            number.append("*");
			catch_number = catch_number + "#";

        }else if(index == 12){

            //number.empty();
			//catch_number = "";

        }else if(index == 13){

            total = number.text();
            total = total.slice(0,-1);
            number.empty().append(total);
			
			total_catch = catch_number;
			total_catch = total_catch.slice(0,-1);
			catch_number = total_catch;
        }else if(index == 14){

            //para el pánico;
			  alert("Alarma");
			
        }else if(index == 15){

            //para el enviar;
			 //$('#front').submit();
			if(catch_number){
				console.log("si");
				var str = $('#front').serialize();
				console.log(str + "&code="+catch_number);		
			    number.empty();
				comentario.val('');
				catch_number = "";
			}else{
				console.log("no");
				alert('empty code');
			}
			
				
			
        }else{ number.append("*"); catch_number = catch_number + (index+1) }
		console.log("Catch Number = "+catch_number);
    });

   /*  $(document).keydown(function(e){
		console.log(e);
        switch(e.which){

            case 96:

                number.append("0");
                break;

            case 97:

                number.append("1");
                break;

            case 98:

                number.append("2");
                break;

            case 99:

                number.append("3");
                break;

            case 100:

                number.append("4");
                break;

            case 101:

                number.append("5");
                break;

            case 102:

                number.append("6");
                break;

            case 103:

                number.append("7");
                break;

            case 104:

                number.append("8");
                break;

            case 105:

                number.append("9");
                break;

            case 8:

                total = number.text();
                total = total.slice(0,-1);
                number.empty().append(total);
                break;

            case 27:

                number.empty();
                break;

            case 106:

                number.append("*");
                break;

            case 35:

                number.append("#");
                break;

            case 13:

                $('.pad-action').click();
                break;

            default: return;
        }

        e.preventDefault();
    }); */

	
	});
