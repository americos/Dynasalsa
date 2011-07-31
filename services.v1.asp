<!-- #include file="dynamix_header.asp" -->

 <% 
 if request("p") = "" then
  rightHEADER = "<img src='images/team-main.jpg' alt='' width='536' height='324' align='top' />"
  rightTXT =  ""
 else
  SELECT CASE requesT("p")
   CASE "dance"
     rightHEADER = "TYPES OF DANCE"
     rightTXT = "<p>Dynamix is primarily a salsa performance group.  However, members of Dynamix come from a multitude of backgrounds.  As a result, Dynamix is very versatile and can teach and perform a long list of dances and dance styles including: </p> <p style='margin:0px 0px 5px 5px;'> Salsa (On 1 , On 2, On 5) <br /> Merengue <br /> Cumbia <br /> Cha Cha <br /> Bachata <br /> Rumba <br /> Samba <br /> Waltz/ Viennese Waltz <br /> Foxtrot <br /> Tango (International, American, Argentine) <br /> Quickstep <br /> Jive <br /> East & West Coast Swing <br /> Line Dances <br /> Belly Dance <br /> Ballet <br /> Modern <br /></p>"

  END SELECT
 end if 
 %>



 <div style="margin:5 0 5 0;"> &nbsp; </div>
 <table width="1050" height="" border="0" cellpadding="0" cellspacing="0" style="margin:0px 0px 0px 30px;">
 <tr align="left" valign="top">
 <td style="width:570px;background-color:#000000;" align="left">
 <div style="color:#990000;margin:10px 0px 0px 5px; font-family:Arial, Helvetica, sans-serif;"><b>  <%=rightHEADER%> </b></div>
 <div style="color:#FFFFFF; margin:0px 55px 0px 5px; font-size:12px; ">
  <%=rightTXT%>
 </div>
 </td><td style="width:514px;" align="left">


<table border="0" cellpadding="0" cellspacing="0" align="left" style="height:325px; "><tr valign="top">
 <td align="left" style="background-image:url(images/darkerMetal.381.jpg); width:430px; "> 
  <img src="images/services.png" width="187"  alt="Dynamix Services" style="margin:15px 0px 0px 25px; ">
  <div style="padding:0px 5px 0px 5px; color:#727272; font-size:12px;">
  <p></p>
 <p style="color:#990000; margin:0px 0px 0px 25px; font-weight:600; font-size:14px; ">
  <a href="services.asp?p=dance"> Types of Dance </a><BR />
  <a href="services.asp?p=lessons">Private & Group Lessions </a><BR />
  <a href="services.asp?p=performance">Performance & Party Enhancement </a><BR />
  <a href="services.asp?p=events">Corporate & Special Events </a><BR />
 </p>
 </div>
</td>
</tr></table>
<tr> <td colspan="100%">  </td></tr>





<script type="text/javascript">
<!--
ScrollLoad ("scrollholder", "scroll", true);
//-->
</script>
</td></tr></table>

<!-- #include file="services_footer.asp" -->

