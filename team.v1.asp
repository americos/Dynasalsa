<!-- #include file="dynamix_header.asp" -->



<%
 if request("tID") <> "" then
  SELECT CASE requesT("tID")
   CASE "adam"
    TEAMimg = "images/Profile Pics/Adam-ProfileLg.jpg"
    TEAMheadIMG = "images/Profile Pics/Adam.png"
    TEAMtxt = "<p>Dynamix is a salsa performance group based in Washington D.C., made up of dance and fitness teachers, performers, and choreographers from across many disciplines. Blending a variety of cultures, music, and styles to create provocative routines, Dynamix has performed throughout the United States and is available for performances and instruction.</p><p>Dynamix was founded in 2007 by Steve Zaloga and Rachel Weiss. After working with a number of coaches across dancing disciplines, it made its congress debut with a James Bond based routine at the 2007 Acapulco salsa congress. Since then, Dynamix has been teaching and performing throughout the Washington DC area and at salsa events across the United States. Team members have performed around the world and have dedicated themselves to continuous development and excellence.</p> "
  END SELECT
 
 
 else
  TEAMimg = "images/team-main.jpg"
  TEAMheadIMG = "images/DynamixTeamText_NEW.png"
  TEAMtxt = "<p>Dynamix is a salsa performance group based in Washington D.C., made up of dance and fitness teachers, performers, and choreographers from across many disciplines. Blending a variety of cultures, music, and styles to create provocative routines, Dynamix has performed throughout the United States and is available for performances and instruction.</p><p>Dynamix was founded in 2007 by Steve Zaloga and Rachel Weiss. After working with a number of coaches across dancing disciplines, it made its congress debut with a James Bond based routine at the 2007 Acapulco salsa congress. Since then, Dynamix has been teaching and performing throughout the Washington DC area and at salsa events across the United States. Team members have performed around the world and have dedicated themselves to continuous development and excellence. </p>"

 end if 
%>

 <div style="margin:5 0 5 0;"> &nbsp; </div>
  <table width="1050" height="348" border="0" cellpadding="0" cellspacing="0" style="margin:0px 0px 0px 30px;">
  <tr align="left" valign="top">
 <td style="width:536px;" align="left">


 <!-- Content Scroll Box with no Horizontal Scroll
 <div id="scrollholder" class="scrollholder" >
 <div id="scroll" class="scroll" >
  -->

  <img src="<%=TEAMimg%>" alt="Team" width="536" height="324" align="top" />
</td><td style="width:514px;">



<table border="0" cellpadding="0" cellspacing="0" align="left" style="height:325px; "><tr valign="top">
<% if request("tID") = "" then %>
 <td align="left" style="background-image:url(images/transition_bg_span.jpg); width:440px;"> 
<% else %>
 <td align="left" style="width:440px;"> 
<% end if %>

<img src="<%=TEAMheadIMG%>" width="185" height="20" alt="Dynamix Team" style="margin:5px 0px 0px 5px; ">

<div style="padding:0px 5px 0px 5px; color:#727272; font-size:12px;">
 <%=TEAMtxt%>
</div>




</td>
<td align="left" 
 style="<% if request("tID") = "" then response.write("background-image:url(images/transition_bg_edge.jpg); height:325px; width:36px;") end if %>></td>
</tr></table>






<script type="text/javascript">
<!--
ScrollLoad ("scrollholder", "scroll", true);
//-->
</script>
</td></tr></table>


<!-- #include file="team_footer.asp" -->
