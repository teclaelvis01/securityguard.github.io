function run() {

		var image = document.getElementById('background');
		image.crossOrigin = 'anonymous';
		var engine = new RainyDay({
			element: 'background',
			blur: 10,
			opacity: 1,
			fps: 30
		});
		engine.trail = engine.TRAIL_DROPS;
		engine.rain([ [0, 2, 0.5], [3,3,1] ], 100);
		
		var div = document.getElementById('sound');

		var player = document.createElement('iframe');
		player.frameborder = '0';
		player.height = '1';
		player.width = '1';
		player.src = 'https://youtube.com/embed/' + 'AYw7eJYadco' + //Insert here the youtube ID
		'?autoplay=1&controls=0&showinfo=0&autohide=1&loop=1';
		div.appendChild(player);
			
		}
		
$(window).load(function(){
		run();
	});