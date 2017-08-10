<script language="JavaScript">

//Analog clock script- By Kurt (kurt.grigg@virgin.net)
//Script featured on Dynamic Drive
//Visit http://www.dynamicdrive.com for this script and more

fCol='444444'; //face colour.
sCol='FF0000'; //seconds colour.
mCol='444444'; //minutes colour.
hCol='444444'; //hours colour.

Ybase=30; //Clock height.
Xbase=30; //Clock width.


H='...';
H=H.split('');
M='....';
M=M.split('');
S='.....';
S=S.split('');
NS4=(document.layers);
NS6=(document.getElementById&&!document.all);
IE4=(document.all);
Ypos=0;
Xpos=0;
dots=12;
Split=360/dots;
if (NS6){
for (i=1; i < dots+1; i++){
document.write('<div id="n6Digits'+i+'" style="position:absolute;top:0px;left:0px;width:30px;height:30px;font-family:Arial;font-size:10px;color:#'+fCol+';text-align:center;padding-top:10px">'+i+'</div>');
}
for (i=0; i < M.length; i++){
document.write('<div id="Ny'+i+'" style="position:absolute;top:0px;left:0px;width:2px;height:2px;font-size:2px;background:#'+mCol+'"></div>');
}
for (i=0; i < H.length; i++){
document.write('<div id="Nz'+i+'" style="position:absolute;top:0px;left:0px;width:2px;height:2px;font-size:2px;background:#'+hCol+'"></div>');
}
for (i=0; i < S.length; i++){
document.write('<div id="Nx'+i+'" style="position:absolute;top:0px;left:0px;width:2px;height:2px;font-size:2px;background:#'+sCol+'"></div>');
}
}
if (NS4){
dgts='1 2 3 4 5 6 7 8 9 10 11 12';
dgts=dgts.split(' ')
for (i=0; i < dots; i++){
document.write('<layer name=nsDigits'+i+' top=0 left=0 height=30 width=30><center><font face=Arial size=1 color='+fCol+'>'+dgts[i]+'</font></center></layer>');
}
for (i=0; i < M.length; i++){
document.write('<layer name=ny'+i+' top=0 left=0 bgcolor='+mCol+' clip="0,0,2,2"></layer>');
}
for (i=0; i < H.length; i++){
document.write('<layer name=nz'+i+' top=0 left=0 bgcolor='+hCol+' clip="0,0,2,2"></layer>');
}
for (i=0; i < S.length; i++){
document.write('<layer name=nx'+i+' top=0 left=0 bgcolor='+sCol+' clip="0,0,2,2"></layer>');
}
}
if (IE4){
document.write('<div style="position:absolute;top:0px;left:0px"><div style="position:relative">');
for (i=1; i < dots+1; i++){
document.write('<div id="ieDigits" style="position:absolute;top:0px;left:0px;width:30px;height:30px;font-family:Arial;font-size:10px;color:'+fCol+';text-align:center;padding-top:10px">'+i+'</div>');
}
document.write('</div></div>')
document.write('<div style="position:absolute;top:0px;left:0px"><div style="position:relative">');
for (i=0; i < M.length; i++){
document.write('<div id=y style="position:absolute;width:2px;height:2px;font-size:2px;background:'+mCol+'"></div>');
}
document.write('</div></div>')
document.write('<div style="position:absolute;top:0px;left:0px"><div style="position:relative">');
for (i=0; i < H.length; i++){
document.write('<div id=z style="position:absolute;width:2px;height:2px;font-size:2px;background:'+hCol+'"></div>');
}
document.write('</div></div>')
document.write('<div style="position:absolute;top:0px;left:0px"><div style="position:relative">');
for (i=0; i < S.length; i++){
document.write('<div id=x style="position:absolute;width:2px;height:2px;font-size:2px;background:'+sCol+'"></div>');
}
document.write('</div></div>')
}



function clock(){
time = new Date ();
secs = time.getSeconds();
sec = -1.57 + Math.PI * secs/30;
mins = time.getMinutes();
min = -1.57 + Math.PI * mins/30;
hr = time.getHours();
hrs = -1.57 + Math.PI * hr/6 + Math.PI*parseInt(time.getMinutes())/360;

if (NS6){
Ypos=window.pageYOffset+window.innerHeight-Ybase-25;
Xpos=window.pageXOffset+window.innerWidth-Xbase-30;
for (i=1; i < dots+1; i++){
 document.getElementById("n6Digits"+i).style.top=Ypos-15+Ybase*Math.sin(-1.56 +i *Split*Math.PI/180)
 document.getElementById("n6Digits"+i).style.left=Xpos-15+Xbase*Math.cos(-1.56 +i*Split*Math.PI/180)
 }
for (i=0; i < S.length; i++){
 document.getElementById("Nx"+i).style.top=Ypos+i*Ybase/4.1*Math.sin(sec);
 document.getElementById("Nx"+i).style.left=Xpos+i*Xbase/4.1*Math.cos(sec);
 }
for (i=0; i < M.length; i++){
 document.getElementById("Ny"+i).style.top=Ypos+i*Ybase/4.1*Math.sin(min);
 document.getElementById("Ny"+i).style.left=Xpos+i*Xbase/4.1*Math.cos(min);
 }
for (i=0; i < H.length; i++){
 document.getElementById("Nz"+i).style.top=Ypos+i*Ybase/4.1*Math.sin(hrs);
 document.getElementById("Nz"+i).style.left=Xpos+i*Xbase/4.1*Math.cos(hrs);
 }
}
if (NS4){
Ypos=window.pageYOffset+window.innerHeight-Ybase-20;
Xpos=window.pageXOffset+window.innerWidth-Xbase-30;
for (i=0; i < dots; ++i){
 document.layers["nsDigits"+i].top=Ypos-5+Ybase*Math.sin(-1.045 +i*Split*Math.PI/180)
 document.layers["nsDigits"+i].left=Xpos-15+Xbase*Math.cos(-1.045 +i*Split*Math.PI/180)
 }
for (i=0; i < S.length; i++){
 document.layers["nx"+i].top=Ypos+i*Ybase/4.1*Math.sin(sec);
 document.layers["nx"+i].left=Xpos+i*Xbase/4.1*Math.cos(sec);
 }
for (i=0; i < M.length; i++){
 document.layers["ny"+i].top=Ypos+i*Ybase/4.1*Math.sin(min);
 document.layers["ny"+i].left=Xpos+i*Xbase/4.1*Math.cos(min);
 }
for (i=0; i < H.length; i++){
 document.layers["nz"+i].top=Ypos+i*Ybase/4.1*Math.sin(hrs);
 document.layers["nz"+i].left=Xpos+i*Xbase/4.1*Math.cos(hrs);
 }
}

if (IE4){
Ypos=document.body.scrollTop+window.document.body.clientHeight-Ybase-20;
Xpos=document.body.scrollLeft+window.document.body.clientWidth-Xbase-20;
for (i=0; i < dots; ++i){
 ieDigits[i].style.pixelTop=Ypos-15+Ybase*Math.sin(-1.045 +i *Split*Math.PI/180)
 ieDigits[i].style.pixelLeft=Xpos-15+Xbase*Math.cos(-1.045 +i *Split*Math.PI/180)
 }
for (i=0; i < S.length; i++){
 x[i].style.pixelTop =Ypos+i*Ybase/4.1*Math.sin(sec);
 x[i].style.pixelLeft=Xpos+i*Xbase/4.1*Math.cos(sec);
 }
for (i=0; i < M.length; i++){
 y[i].style.pixelTop =Ypos+i*Ybase/4.1*Math.sin(min);
 y[i].style.pixelLeft=Xpos+i*Xbase/4.1*Math.cos(min);
 }
for (i=0; i < H.length; i++){
 z[i].style.pixelTop =Ypos+i*Ybase/4.1*Math.sin(hrs);
 z[i].style.pixelLeft=Xpos+i*Xbase/4.1*Math.cos(hrs);
 }
}
setTimeout('clock()',100);
}
clock();
//-->
</script>

<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Indian Holidays IN : Best Indian Tours Packages:</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>

<link rel="stylesheet" type="text/css" href="featuredcontentglider.css" />

<script type="text/javascript" src="featuredcontentglider.js">


</script>


</head>

<body align="center" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0">

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
  <tr>
    <td width="100%" valign="top" bgcolor="#000000">
    <img border="0" src="images/top_black.jpg"></td>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table border="0" align="center" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="950">
      <tr>
        <td><!-- #include file="header.asp" --></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <!-- #include file="index.html" --></td>
  </tr>
  <tr>
    <td width="100%" valign="top">
    <table border="0" align="center" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="950">
      <tr>
        <td>
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
          <tr>
        <td valign="top">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
          <tr>
            <td width="69%" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
              <tr>
                <td width="100%">
                <p style="margin-bottom: 10">
                <font face="Tahoma" style="font-size: 22pt">Indian Holidays in
                </font><font face="Tahoma" style="font-size: 16pt">Offers 
                Services </font></td>
              </tr>
              <tr>
                <td width="100%">
                <p align="justify" style="line-height: 120%">
                <font face="Tahoma" style="font-size: 9pt" color="#008080">
                Indian holidaysIN Tours is an early pioneer in arranging India 
                Vacation and travel packages to India. We, our entire staff and 
                all our offices, are professional tour operators, and we 
                understand and anticipate your needs and are dedicated to 
                providing each and every traveler with smooth and efficient 
                services. With an extensive network of connections with all 
                major airlines and hotels. Indian holidaysIN Tours is an early 
                pioneer in arranging India Vacation and travel packages to 
                India. We, our entire staff and all our offices, are 
                professional tour operators, and we understand and anticipate 
                your needs and are dedicated to providing each and every 
                traveler with smooth and efficient services. With an extensive 
                network of connections with all major airlines and hotels .</font></td>
              </tr>
              <tr>
                <td width="100%">
                <p align="right" style="margin-top: 5; margin-bottom: 5">
                <font face="Tahoma" style="font-size: 8pt">
                <a style="text-decoration: none" href="about_us.asp">
                <font color="#FF0000">+ know more </font></a></font></td>
              </tr>
              <tr>
                <td width="100%">&nbsp;
                </td>
              </tr>
              <tr>
                <td width="100%">
                <script type="text/javascript">

featuredcontentglider.init({
	gliderid: "canadaprovinces", //ID of main glider container
	contentclass: "glidecontent", //Shared CSS class name of each glider content
	togglerid: "p-select", //ID of toggler container
	remotecontent: "", //Get gliding contents from external file on server? "filename" or "" to disable
	selected: 0, //Default selected content index (0=1st)
	persiststate: false, //Remember last content shown within browser session (true/false)?
	speed: 2000, //Glide animation duration (in milliseconds)
	direction: "rightleft", //set direction of glide: "updown", "downup", "leftright", or "rightleft"
	autorotate: true, //Auto rotate contents (true/false)?
	autorotateconfig: [4000, 600] //if auto rotate enabled, set [milliseconds_btw_rotations, cycles_before_stopping]
})

                </script>

<div id="canadaprovinces" class="glidecontentwrapper">



<div class="glidecontent">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="654">
  <tr>
    <td>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
      <tr>
                <td width="100%" dir="ltr">
                <p align="left" dir="ltr">
                <img border="0" src="images/full_line.jpg" width="645" height="9"></td>
              </tr>
      <tr>
                <td width="100%" dir="ltr">
                <p style="margin-top: 6; margin-bottom: 6" dir="ltr">
                <font face="Tahoma" style="font-size: 16pt">Services We Offers</font></td>
              </tr>
      <tr>
                <td width="100%">
                <img border="0" src="images/full_line.jpg" width="645" height="9"></td>
              </tr>
      <tr>
                <td width="100%">&nbsp;
                </td>
              </tr>
      <tr>
                <td width="100%">
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                  <tr>
                    <td width="32%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <a href="Honeymoon_package.asp">
                            <img border="0" src="images/t_01.jpg" width="181" height="181"></a></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">Honeymoon 
                            Packages</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            Originally &quot;honeymoon&quot; simply described the period 
                            just after the wedding ...</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="Honeymoon_package.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                    <td width="2%" valign="top">
                    <img border="0" src="images/blank.jpg" width="20" height="20"></td>
                    <td width="31%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <a href="ayurvedic_package.asp">
                            <img border="0" src="images/t_02.jpg" width="181" height="181"></a></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">Ayurvedic 
                            Packages</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            The Ayurvedic doctor selects the ayurvedic oils 
                            based on your body type...</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="ayurvedic_package.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                    <td width="2%" valign="top">
                    <img border="0" src="images/blank.jpg" width="20" height="20"></td>
                    <td width="33%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <a href="#.">
                            <img border="0" src="images/t_03.jpg" width="181" height="181"></a></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">Backwater 
                            Packages</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            Kerala is gifted with lovely beaches, hill stations, 
                            stunning backwaters, mindblowing greenery...</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="backwater_packages.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                </table>
                </td>
              </tr>
      <tr>
                <td width="100%">&nbsp;
                </td>
              </tr>
    </table>
    </td>
  </tr>
</table>
</div>


<div class="glidecontent">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="654">
  <tr>
    <td>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
      <tr>
                <td width="100%">
                <img border="0" src="images/full_line.jpg" width="645" height="9"></td>
              </tr>
      <tr>
                <td width="100%">
                <p style="margin-top: 5; margin-bottom: 5">
                <font face="Tahoma" style="font-size: 16pt">Spiritual &amp; Heritage 
                Tours</font></td>
              </tr>
      <tr>
                <td width="100%">
                <img border="0" src="images/full_line.jpg" width="645" height="9"></td>
              </tr>
      <tr>
                <td width="100%">
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                  <tr>
                <td width="100%">&nbsp;
                </td>
                  </tr>
                  <tr>
                <td width="100%">
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                  <tr>
                    <td width="32%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <img border="0" src="images/t_04.jpg" width="181" height="181"></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">Haridwar</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            Originally &quot;honeymoon&quot; simply described the period 
                            just after the wedding ...</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="haridwar.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                    <td width="2%" valign="top">
                    <img border="0" src="images/blank.jpg" width="20" height="20"></td>
                    <td width="31%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <img border="0" src="images/t_05.jpg" width="181" height="181"></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">Gateway of India</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            The Ayurvedic doctor selects the ayurvedic oils 
                            based on your body type...</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="gatway_of_india.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                    <td width="2%" valign="top">
                    <img border="0" src="images/blank.jpg" width="20" height="20"></td>
                    <td width="33%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <img border="0" src="images/t_06.jpg" width="181" height="181"></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">Golden Chariot 
                            Luxury</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            Kerala is gifted with lovely beaches, hill stations, 
                            stunning backwaters, mindblowing greenery...</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="golden_cariot.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                </table>
                    </td>
                  </tr>
                  <tr>
                    <td width="100%">&nbsp;</td>
                  </tr>
                </table>
                </td>
              </tr>
    </table>
    </td>
  </tr>
</table>
</div>



<div class="glidecontent">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="654">
  <tr>
    <td>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
      <tr>
                <td width="100%">
                <img border="0" src="images/full_line.jpg" width="645" height="9"></td>
              </tr>
      <tr>
                <td width="100%">
                <p style="margin-top: 5; margin-bottom: 5">
                <font face="Tahoma" style="font-size: 16pt">Fleet Services</font></td>
              </tr>
      <tr>
                <td width="100%">
                <img border="0" src="images/full_line.jpg" width="645" height="9"></td>
              </tr>
      <tr>
                <td width="100%">
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                  <tr>
                <td width="100%">&nbsp;
                </td>
                  </tr>
                  <tr>
                <td width="100%">
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                  <tr>
                    <td width="32%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <img border="0" src="images/t_09.jpg" width="181" height="181"></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">Cruise</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            Indian holidays In offers you a luxury holidays in 
                            India, onboard one of our luxury cruise liners...
                            </font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="cruise.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                    <td width="2%" valign="top">
                    <img border="0" src="images/blank.jpg" width="20" height="20"></td>
                    <td width="31%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <img border="0" src="images/t_07.jpg" width="181" height="181"></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">Indian Airlines</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            A chartered private jet delivers you and your 
                            entourage with absolute luxury...</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="indian_ariline.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                    <td width="2%" valign="top">
                    <img border="0" src="images/blank.jpg" width="20" height="20"></td>
                    <td width="33%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <img border="0" src="images/t_08.jpg" width="181" height="181"></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">Wildlife</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            India has a unique and vest geography, with 
                            everything from arid deserts to snow...</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="wild_life_tours.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                </table>
                    </td>
                  </tr>
                  <tr>
                    <td width="100%">&nbsp;</td>
                  </tr>
                </table>
                </td>
              </tr>
    </table>
    </td>
  </tr>
</table>
</div>



<div class="glidecontent">
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="654">
  <tr>
    <td>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
      <tr>
                <td width="100%">
                <img border="0" src="images/full_line.jpg" width="645" height="9"></td>
              </tr>
      <tr>
                <td width="100%">
                <p style="margin-top: 5; margin-bottom: 5">
                <font face="Tahoma" style="font-size: 16pt">International 
                Services</font></td>
              </tr>
      <tr>
                <td width="100%">
                <img border="0" src="images/full_line.jpg" width="645" height="9"></td>
              </tr>
      <tr>
                <td width="100%">&nbsp;
                </td>
              </tr>
      <tr>
                <td width="100%">
                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                  <tr>
                    <td width="32%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <img border="0" src="images/t_10.jpg" width="181" height="181"></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">International 
                            Tours </font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            Originally &quot;honeymoon&quot; simply described the period 
                            just after the wedding ...</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="international_tours.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                    <td width="2%" valign="top">
                    <img border="0" src="images/blank.jpg" width="20" height="20"></td>
                    <td width="31%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <img border="0" src="images/t_11.jpg" width="181" height="181"></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">Foreign Exchange</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            The Ayurvedic doctor selects the ayurvedic oils 
                            based on your body type...</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="foreign_exchange.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                    <td width="2%" valign="top">
                    <img border="0" src="images/blank.jpg" width="20" height="20"></td>
                    <td width="33%" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                      <tr>
                        <td width="3%">
                        <img border="0" src="images/left_image.jpg" width="10" height="300"></td>
                        <td width="95%" background="images/center_image.jpg" valign="top">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
                          <tr>
                            <td width="100%">
                            <p align="center" style="margin-top: 10; margin-bottom: 10">
                            <img border="0" src="images/t_12.jpg" width="181" height="181"></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <font face="Tahoma" color="#006699">Visa &amp; Passport</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p style="margin-top: 5; margin-bottom: 5">
                            <font face="Tahoma" style="font-size: 8pt" color="#666666">
                            Kerala is gifted with lovely beaches, hill stations, 
                            stunning backwaters, mindblowing greenery...</font></td>
                          </tr>
                          <tr>
                            <td width="100%">
                            <p align="right"><font color="#FF0000">
                            <a href="passport_services.asp" style="text-decoration: none">
                            <font color="#FF0000">[ + ]</font></a></font></td>
                          </tr>
                        </table>
                        </td>
                        <td width="2%">
                        <img border="0" src="images/right_image.jpg" width="10" height="300"></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                </table>
                </td>
              </tr>
      <tr>
                <td width="100%">&nbsp;
                </td>
              </tr>
    </table>
    </td>
  </tr>
</table>
</div>




</div>

<div id="p-select" class="glidecontenttoggler">

<a href="#" class="toc">•</a> <a href="#" class="toc">•</a> <a href="#" class="toc">•</a> <a href="#" class="toc">•</a>

</div></td>
              </tr>
              <tr>
               <td width="2%">
                     
                     <marquee behavior="scroll" direction="left" <img src="images/saanchi-2 (2).jpg" /><img src="images/saanchi-2 (1).jpg" /> </marquee>
                            
              </tr>
              </table>
            </td>
            <td width="1%" valign="top"><img border="0" src="images/blank.jpg"></td>
            <td width="30%" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%">
              <tr>
                <td width="100%"><!-- #include file="rightlink.asp" --></td>
              </tr>
              <tr>
                <td width="100%"></td>
              </tr>
            </table>
            </td>
          </tr>
        </table>
        </td>
          </tr>
          <tr>
        <td>&nbsp;</td>
          </tr>
          </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" bgcolor="#97C151">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="950">
      <tr>
        <td><!-- #include file="futtor.asp" --></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td width="100%" valign="top" bgcolor="#72AD15" height="10">
    <img border="0" src="images/bottom_green.jpg"></td>
  </tr>
</table>

</body>

</html>