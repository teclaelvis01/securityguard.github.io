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


/* Prueba tabla */
var data0 = [
    {
        "ZONE": "Clave 1",
        "STATIONS": "05",
        "GUARDS": "7",
        "ALERT": "<span class='label label-success'><i class='fa fa-check-circle '></i> Success</span>",
		"VIEW": "<button type='button' class='btn btn-info btn-xs'><i class='fa fa-search '></i> view</button>"
    },
	{
        "ZONE": "Clave 2",
        "STATIONS": "03",
        "GUARDS": "5",
        "ALERT": "<span class='label label-warning'><i class='fa fa-warning '></i> Success</span>",
		"VIEW": "<button type='button' class='btn btn-info btn-xs'><i class='fa fa-search '></i> view</button>"
    },
	{
        "ZONE": "Clave 3",
        "STATIONS": "04",
        "GUARDS": "8",
        "ALERT": "<span class='label label-danger'><i class='fa fa-life-ring '></i> Success</span>",
		"VIEW": "<button type='button' class='btn btn-info btn-xs'><i class='fa fa-search '></i> view</button>"
    },
	{
        "ZONE": "Clave 4",
        "STATIONS": "03",
        "GUARDS": "7",
        "ALERT": "<span class='label label-success'><i class='fa fa-check-circle '></i> Success</span>",
		"VIEW": "<button type='button' class='btn btn-info btn-xs'><i class='fa fa-search '></i> view</button>"
    }
    
	
];

$('#table').bootstrapTable({
        data: data0
    });
	
	function queryParams() {
    return {
        type: 'owner',
        sort: 'updated',
        direction: 'desc',
        per_page: 5,
        page: 1
    };
}



});