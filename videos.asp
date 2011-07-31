<!-- #include file="dynamix_header.asp" -->

<style>
.titlec {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
	color: #FFF;
	text-align: left;
}
ul.videos li {
  float: left;
  width: 10em;
  margin-bottom: 1em;
}
ul.videos
{
	margin-bottom: 1em;
	padding-left: 0em;
	margin-left: 0em;
	margin-right: 1em;
	list-style: none;
	border: thin #8B0000;
}
</style>

<script type="text/javascript" src="http://swfobject.googlecode.com/svn/trunk/swfobject/swfobject.js"></script>
<script type="text/javascript">
function loadVideo(playerUrl, autoplay) {
  swfobject.embedSWF(
      playerUrl + '&rel=1&border=0&fs=1&autoplay=' + 
      (autoplay?1:0), 'player', '500', '400', '9.0.0', false, 
      false, {allowfullscreen: 'true'});
}

function showMyVideos2(data) {
  var feed = data.feed;
  var entries = feed.entry || [];
  var html = ['<ul class="videos">'];
  for (var i = 0; i < entries.length; i++) {
    var entry = entries[i];
    var title = entry.title.$t;
    var thumbnailUrl = entries[i].media$group.media$thumbnail[0].url;
    var playerUrl = entries[i].media$group.media$content[0].url;
    html.push('<li onclick="loadVideo(\'', playerUrl, '\', true)">',
              '<img src="', thumbnailUrl, '" width="130" height="97"/>', '</span><br /><span class="titlec">', title, '</span><br /></li>');
  }
  html.push('</ul><br style="clear: left;"/>');
  document.getElementById('videos2').innerHTML = html.join('');
  if (entries.length > 0) {
    loadVideo(entries[0].media$group.media$content[0].url, false);
  }
}
</script>

<table width="80%" border="0" cellpadding="0" cellspacing="1" style="margin:0px 0px 0px 30px;">
<tr align="left" valign="top">
 	<td valign="top" align="left" height="400" width="500">
  		<div id="playerContainer" style="width:30em; height: 280px;">
		    <object id="player"></object>
		</div>
 	</td>
	<td valign="top" bgcolor="#808080" style="padding-left:10px; padding-right:10px; padding-top:10px;">
  
  <span style="font-family: Arial, Helvetica, sans-serif; font-size: 26px;font-weight: bold;color: #900;">Videos</span>
							
		<div id="videos2"></div>
		<script 
		    type="text/javascript" 
		    src="http://gdata.youtube.com/feeds/users/DynamixSalsa/uploads?alt=json-in-script&callback=showMyVideos2&max-results=30&orderBy=viewCount">
		</script>

	
	<script type="text/javascript">
	<!--
	ScrollLoad ("scrollholder", "scroll", true);
	//-->
	</script>
	</td>
</tr>
</table>


<!-- #include file="services_footer.asp" -->


