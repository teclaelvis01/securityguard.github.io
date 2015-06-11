function run() {
				var image = document.getElementById('background');
				image.crossOrigin = 'anonymous';
				var engine = new RainyDay({
					element: 'background',
					blur: 10,
					opacity: 1,
					fps: 30
				});
				engine.gravity = engine.GRAVITY_NON_LINEAR;
				//engine.trail = engine.TRAIL_SMUDGE;
				engine.trail = engine.TRAIL_DROPS;
				
				engine.rain([ [1, 2, 0.5], [3, 2, 1] ], 50);
			}
		
$(window).load(function(){
		run();
	});		