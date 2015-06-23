$(function(){
 
$('#nav-left-ico').click(function(){
	$("#nav-left").addClass("mostrarnav");
	$('#nav-left-ico-close').css('visibility','visible');
});
$('#nav-left-ico-close').click(function(){
	$("#nav-left").removeClass("mostrarnav");
});


$('.btn-group input').on('change', function() {
	var val = $('input[name="options"]:checked', '.btn-group').val();
   if(val == "1"){
		$('.box').removeClass('hide');
		$('.table-responsive').addClass('hide'); 
   }else{
		$('.box').addClass('hide');
		$('.table-responsive').removeClass('hide'); 
   }
});


$('.bootstrap-switch-container ').click( function() {
	var val = $('input[name="options"]:checked', '.bootstrap-switch-container').val();
 /*   if(val == "1"){
		$('.box').removeClass('hide');
		$('.table-responsive').addClass('hide'); 
   }else{
		$('.box').addClass('hide');
		$('.table-responsive').removeClass('hide'); 
   } */
   //console.log( $("#switch-state").bootstrapSwitch("state"));
  
   
});

$('input[name="my-checkbox"]').on('switchChange.bootstrapSwitch', function(event, state) {

  console.log(state); // true | false
  if(state){
	//$('.box').removeClass('hide');
	$('.box').fadeIn('slow').removeClass('hide');
	$('.table-responsive').addClass('hide');
	
  }else{
	$('.box').addClass('hide');
	$('.table-responsive').fadeIn('slow').removeClass('hide');  
  }
});


/* Activando contenido right */
$("#arrow-right").click(function(){
	$('#contenido').fadeIn(100).addClass();
	$('#nav-left').addClass('hide');
	$('.primary').addClass('hide');
	
});
/* Ocultando contenido right */
$("#arrow-top-left").click(function(){
	$('#contenido').css('display','none');	
	$('#nav-left').removeClass('hide');
	$('.primary').removeClass('hide');	
});

});