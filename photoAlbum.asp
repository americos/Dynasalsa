<html>

<head>

<title>Gallery Test</title>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="/js/picbox.js"></script> 
<link href="/css/picbox.css" media="screen" rel="Stylesheet" type="text/css" /> 






</head>

<body>





<a href="#" id="gallery"><h1>Dynamix Photo Shoot</h1></a>


<img id="gallery-loader" src="http://keemor.com/demo/picasa/ajax-loader.gif"  style="display: none;"/>





</body>

<script>
var Gal = {
	//Max image width form Picasa
	// 94, 110, 128, 200, 220, 288, 320, 400, 512, 576, 640, 720, 800, 912, 1024, 1152, 1280, 1440, 1600
	imgMax:800,
	//Array of photos
	photos: [],
	//Loader image
	loaderImg: $('#gallery-loader'),
	init: function() {
		if (!/android|iphone|ipod|series60|symbian|windows ce|blackberry/i.test(navigator.userAgent)) {
			$('#gallery').bind('click',function(e){
				//Prevent default click event
				e.preventDefault();
				//Show loader
				Gal.loaderImg.show();
				//Add JSON feed from Picasa with parameter callback = Gal.prepare to BODY
				$('BODY').append('<script src="http://picasaweb.google.com/data/feed/base/user/110335159824320246790/albumid/5523312098864377329?alt=json&kind=photo&hl=en_US&imgmax='+Gal.imgMax+'&callback=Gal.prepare">'+'</sc'+'ript>');

			});
		}
	},
	//data array with photos from Picasa
	prepare: function(data){
		var i = data.feed.entry.length;
		//Start with random photo
		var start = Math.floor(Math.random()*i+1)
		//Define vars at once
		var item,title,imageurl;
		//Iterate thru data
		while (i--) {
		    item = data.feed.entry[i];
			title = item.title.$t;
			imageurl = item.media$group.media$content[0].url;

			//Other possible data
			//var width = item.media$group.media$content[0].width;
			//var height = item.media$group.media$content[0].height;
			//var description = item.media$group.media$description.$t;
			//var link = item.link[2].href;

			//Add photo to photos array
			Gal.photos.push([imageurl,title]);
		}
		//Show gallery
		Gal.show(start);
	},
	show: function(start){
		//Start picbox gallery
		$.picbox(Gal.photos,start,{'loop':true});
		//Hide loader
		Gal.loaderImg.hide();
	}
}
$(document).ready(function(){ Gal.init(); });



</script>

</html>





