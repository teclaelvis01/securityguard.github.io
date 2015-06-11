(function($){
	
	"use strict";
	
/* 		$(window).resize(function(){

		var win_height = $(window).outerHeight();

		var win_width = $(window).outerWidth();

		var img_height = $('#background').outerHeight();
		var img_width = $('#background').outerWidth();

		var fraction_height = win_height / img_height;
		var fraction_width = win_width / img_width;

		var fraction_result = ( fraction_height > fraction_width ) ? fraction_height : fraction_width;

		$('canvas').css('height', Math.ceil( fraction_result * img_height ) + 'px' );
		$('canvas').css('width', Math.ceil( fraction_result * img_width ) + 'px' );

		$('canvas').css('top', Math.floor( (win_height - fraction_result * img_height) / 2 ) + 'px' );
		$('canvas').css('left', Math.floor( (win_width - fraction_result * img_width) / 2 ) + 'px' );
	}); */
	
	
	

	$('#shortlinks li a, #about').tooltip();
	$('input').placeholder();
	
	$('input').focus(function(){
		$('.newsletter-fill').addClass('active');
		$('.email-txt').attr('placeholder','Enter your email address here');
		$('.subscribe-btn').show();
	});
		
	$('.fa-times').click(function(){
	  $('input[type="email"]').val('');
	  $('.newsletter-fill').removeClass('active');
	  $('.email-txt').attr('placeholder','Subscribe to our Newsletter');
	  $('.subscribe-btn').hide();
	  
	});

})(jQuery);

