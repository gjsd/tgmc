<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<META http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<META name="Copyright" content="Allwebco Design Corporation http://allwebcodesign.com/">
<link rel="StyleSheet" href="css/common-style.css" type="text/css">
<link rel="StyleSheet" href="css/gray.css" type="text/css">
<link rel="StyleSheet" href="css/gray-menu.css" type="text/css">
<script language="JavaScript" type="text/javascript" src="css/css.js"></script>
<script language="JavaScript" type="text/javascript" src="javascripts.js"></script>
<script language="JavaScript" type="text/javascript" src="pop-closeup.js"></script>
</head>
<style>
body	{
	margin-left: 10px;
	padding: 0px;
	border: #000000 0px solid;
	}
/* COLOR CODES - BACKGROUNDS AND BORDERS */

.pageheight		{ height: 675px; }

#cornerimage		{ width: 40px; height: 40px; }

/*.page-splits		{
			height: 5px;
			width: 100%;
			margin-top: 10px;
			margin-bottom: 10px;
			}
*/

/*.faqline		{ border-bottom:#FFFF00 1px solid; }*/


.pictbackground		{ background-color:#FFFFCC; }


#date-location		{ right: 15px; POSITION: absolute; TOP: 53px; text-align: left; }






/* GENERAL TEXT SIZES */

.smalltext	{ COLOR: #FFFFCC; FONT: 100px arial, sans-serif; font-weight: normal; }

/*Site design*/.footer			{ COLOR: #999999; FONT: 9px verdana, arial, sans-serif; }

.phonetitle		{ COLOR: #FF0099; FONT: 13px arial, sans-serif; font-weight: bold; }

.list 			{ COLOR: #FFFFCC; FONT: 12px verdana, arial, sans-serif; font-weight: normal; }

.testimonial		{ COLOR: #FFFFCC; FONT: 11px verdana, arial, sans-serif; font-style: italic; font-weight: bold; }






/* GENERAL TEXT FORMATTING CODE */

.formmargin		{ margin: 0px; }

.just 			{ text-align: justify; }

.faq 			{ line-height: 19px; }







/* GALLERY FONTS, BORDERS AND BUTTONS */

.price			{ COLOR: #3366FF; FONT: 14px verdana, arial, sans-serif; font-weight: bold; }

.cartmargin		{ margin: 8px 0px 0px 0px; }

.cartdropdown		{
			COLOR: #000000;
			WIDTH: 130PX;
			FONT: 12px arial, verdana, sans-serif;
			margin-bottom: 10px;
			}

.cartbox 	{
		padding: 0px 6px 6px 6px;
		width: 160px;
		text-align: left;
		-moz-border-radius: 5px;
		}

.carttitle 	{
		FONT: bold 12px verdana, arial, sans-serif;
		COLOR: #024B97;
		border: 1px solid #024B97;
		background-color: #F1F8FD;
		margin-bottom: 3px;
		padding: 4px 9px 4px 9px;
		}

.gallerytext		{ COLOR:#FFFF33 FONT: 11px verdana, arial, sans-serif; }

.picturename		{
			COLOR: #999999;
			FONT: 16px arial, verdana, sans-serif;
			font-weight: bold;
			margin-left: 10px;
			}

.picturetitle 		{
			COLOR: #000000;
			FONT: 13px arial, verdana, sans-serif;
			font-weight: bold;
			}

.ordertitle		{ COLOR: #999999; FONT: 16px arial, verdana, sans-serif; font-weight: bold; }

.viewer-border		{ border: #000000 1px solid; }

.Galborder	 	{ border: #000000 1px solid; margin-bottom: 3px; }

A:hover .Galborder 	{ border: #00FFFF 1px solid; margin-bottom: 3px; Filter: Alpha(Opacity=80);-moz-opacity: 0.8; }





/* TEMPLATE ORDER BUTTONS */

.button-order	 	{
			color: #FFFFFF;
	       		font: bold 12px verdana, arial, serif;
			text-align: center;
			background-color: #3C57E7;
	        	background-image: url("../picts/button-order.gif");
        		padding: 3px 5px 3px 5px;
			cursor:pointer;
			width: 130px;
        		border: #333399 1px solid;
			}


.buttonon-order	 	{
			color: #FFFFFF;
	       		font: bold 12px verdana, arial, serif;
			text-align: center;
			background-color: #FF7C2C;
	        	background-image: url("../picts/buttonon-order.gif");
        		padding: 3px 5px 3px 5px;
			cursor:pointer;
			width: 130px;
        		border: #CC6600 1px solid;
			}








/* SCROLLER OPTIONS */

.scroller-table		{ padding: 7px; }

.scroller-body		{
			margin: 0px;
			padding: 0px;
			border: #C0C0C0 0px solid;
			}








/* HIDE MENU AND ITEMS FOR PRINTING */


@media print {
.printhide 	{ display:none; }
.printhelp	{ width:600px; }
}
@media screen{
.printonly 	{ display:none; }
}







/* SIDEBAR OPTIONS */

.sidebar-background 	{ width: 187px; }


.sidebar-frame		{
			width: 187px;
			height: 675px;
			min-height: 600px;
			margin: 0px;
			padding: 0px;
			BORDER: #999999 0px solid;
			}

/* FOR RIGHT SIDEBAR */

.sidebarright-width	{ width: 190px; }

fieldset 	{
		padding: 0px 6px 6px 6px;
		width: 150px;
		text-align: left;
		-moz-border-radius: 5px;
		}

fieldset legend {
		margin-bottom: 3px;
		padding: 2px 5px 2px 5px;
		}













/* CONTACT AND QUOTES FORM */


.shadeform	{
		FONT: 13px arial, verdana, sans-serif;
		background-image: url("../picts/shadeform.gif");
		background-color: #ECF0F3;
		text-align: left;
		WIDTH: 200PX;
		BORDER: #000000 1px solid;
		}


.dropdown 	{
		COLOR: #333333;
		background-color: #ECF0F3;
		WIDTH: 200PX;
		FONT: 11px verdana, arial, sans-serif;
		}


.textarea	{
		FONT: 13px arial, verdana, sans-serif;
		background-image: url("../picts/shadeform.gif");
		text-align: left;
		WIDTH: 275PX;
		BORDER: #000000 1px solid;
		}


.quoteform	{
		FONT: 13px arial, verdana, sans-serif;
		background-image: url("../picts/shadeform.gif");
		background-color: #ECF0F3;
		text-align: left;
		BORDER: #000000 1px solid;
		}

.quotechoice 	{ color: #3366CC; font: 11px arial, verdana, sans-serif; font-weight: normal; }

.dropquotes	{ FONT: 12px arial, verdana, sans-serif; }




/* FAQ POPUP, SLIDESHOW & CONTACT & QUOTES FORM BUTTONS */

.button 		{
			color: #000000;
	       		font: normal 12px arial, serif;
			text-align: center;
			background-color: #C3D5E4;
	        	background-image: url("../picts/button.gif");
        		padding: 2px 6px 2px 6px;
			cursor: pointer;
        		border: #45647E 1px solid;
			}

.buttonon 		{
			color: #996600;
	       		font: normal 12px arial, serif;
			text-align: center;
			background-color: #F7D0A1;
	        	background-image: url("../picts/buttonon.gif");
        		padding: 2px 6px 2px 6px;
			cursor: pointer;
        		border: #996600 1px solid;
			}







/* SITE SEARCH FORM */

.searchsiteform		{
			FONT: 12px arial, verdana, sans-serif;
			color: #000000;
			background-color: #FFFFFF;
			background-image: url("../picts/shadeform.gif");
			WIDTH: 120PX;
			HEIGHT: 19PX;
			BORDER: #000000 1px solid;
			margin-top: 1px;
			}


/* SITE SEARCH BACKGROUND */

.googlesearch		{ background-color: #FFFFFF; }











/* LINKS PAGE CODE */

.searchbutton	{
		color: #000000;
	       	font: normal 11px arial, serif;
		text-align: center;
		background-color: #C3D5E4;
	        background-image: url("../picts/button.gif");
        	padding: 1px 2px 1px 2px;
		cursor:pointer;
        	border: #45647E 1px solid;
		}


.linksmargin	{ margin: 0px; margin-top: 10px; }


.searchform 	{ FONT: 13px arial, verdana, sans-serif;
		background-image: url("../picts/shadeform.gif");
		background-color: #FFFFFF;
		WIDTH: 120PX;
		HEIGHT: 20PX;
		BORDER: #999999 1px solid; }





BODY	{
	scrollbar-base-color: #AEAFBB;
	scrollbar-track-color: #C0C0C0;
	backgroUnd-color: #333333;
	}




/* NON-MENU LINK COLORS */

a:link, a:visited, a:active	{ color: #3366CC; text-decoration: none; }

a:hover				{ color: #009900; text-decoration: none; }





/* PAGE FONTS AND TITLES */

/* THE NEXT LINE CONTROLS THE FONT SIZE ON ALL PAGES */

TABLE                { COLOR: #D5DFAA; FONT: 12px verdana, arial, sans-serif; }

.title		{ COLOR: #AEAFBB; FONT: 18px verdana, arial, sans-serif; font-weight: bold; }

.subtitle	{ COLOR: #000000; FONT: 14px verdana, arial, sans-serif; font-weight: bold; }

.smalltitle 	{ COLOR: #000000; FONT: 13px verdana, arial, sans-serif; font-weight: bold; }

.date-font	{ color: #FFFFFF; font: 10px verdana, arial, sans-serif; font-weight: bold; }

#date-location	{ right: 10px; POSITION: absolute; top: 53px; text-align: left; }



/* HEADER BACKGROUND COLOR - edit the header.js also */








/* NON GALLERY IMAGE BORDERS */

.borders		{ border: #000000 1px solid; }






/* SHADOW AND CORNER IMAGE */

#cornerimage		{ background-image: url("../picts/gray/corner.gif"); }

.pageheight		{ background-image: url("../picts/shadow-vertical.gif"); background-repeat: repeat-y; }

.shadow-horizontal	{ background-image: url("../picts/shadow-horizontal.gif"); background-repeat: repeat-x; }






/* PAGE LINES & BORDERS */
	

.pagebar-bottom	{
		background-color: #C0C0C0;
		background-image: url("../picts/gray/bar.jpg");
		height: 25px;
		border: solid #000000;
		border-width: 0px 0px 0px 0px;
		/* NOTE: BORDERs ABOVE ARE | top | right | bottom | left */
		}

.page-splits		{
			border: #9698AB 1px solid;
			background-color: #F0F0F6;
			color: #F0F0F6;
			}











/* SCROLLER OPTIONS */





.scroller-body		{
			background-color: #FFFFFF;
			background-image: url("../picts/gray/background-scroller.jpg");
			background-repeat: repeat-y;
			}

.scrollertitle 		{ color: #6666FF; font-family: arial, Tahoma, Verdana, sans-serif; font-size: 13px; font-weight: bold; }

.scrollertext 		{ color: #000000; font-family: Tahoma, Verdana, sans-serif; font-size: 11px; font-weight: normal; }



/* SCROLLER LINK COLORS */

a.scroller:link, a.scroller:visited, a.scroller:active	{ color: #3300FF; text-decoration: none; }

a.scroller:hover					{ color: #0000FF; text-decoration: none; }













/* LEFT SIDEBAR OPTIONS */

.sidebar-background, .sidebar-background2
			{
			background-image: url("../picts/gray/background-sidebar.gif");
			background-color: #BDBFC4;
			background-repeat: repeat-y;
			}

.sideborder		{ BORDER: #5F606C 1px solid; }

.sidebarboxwidth	{ width: 0px; }

/* THE NEXT 2 LINES ARE NOT USED IN 2009 MODELS - FOR OLDER CHROME COMPATIBILITY */

.sidebartitle		{ COLOR: #000000; FONT: 0px verdana, arial, sans-serif; font-weight: bold; }

.sidebartext		{ COLOR: #FFFFFF; FONT: 0px arial, verdana,  sans-serif; font-weight: normal; }


.sidebartitle-box	{
		padding: 5px;
		background-color: #95989D;
		background-image: url("../picts/gray/background-sidebar-title.gif");
		color: #FFFFFF;
		font: bold 12px arial, verdana, sans-serif;
		text-align: left;
		border-top: #5F606C 1px solid;
		border-bottom: #5F606C 1px solid;
		border-left: #5F606C 1px solid;
		border-right: #5F606C 1px solid;
		}	

.sidebartext-box	{
		padding: 0px;
		background-color: #ECEDF1;
		color: #000000;
		font: normal 11px arial, verdana, sans-serif;
		text-align: left;
		border-top: #5F606C 0px solid;
		border-bottom: #5F606C 1px solid;
		border-left: #5F606C 1px solid;
		border-right: #5F606C 1px solid;
		}

a.sidelink:link, a.sidelink:visited, a.sidelink:active	{ color: #3366CC; text-decoration: none; }

a.sidelink:hover					{ color: #009900; text-decoration: none; }










/* FOR RIGHT SIDEBAR */

.sidebartext-right	{ color: #666666; FONT: 11px arial, verdana,  sans-serif; font-weight: normal; }



fieldset legend {
		FONT: bold 13px arial, verdana, sans-serif;
		COLOR: #000000;
		border:1px solid #999999;
		background-color: #F0F0F0;
		}

/* START THE CODE FOR THE MENUS */

/* IF YOU EDIT THE SUB MENU WIDTH - EDIT 160 IN 4 PLACES TOTAL */

/* menu ver 3.15 2009 */





/* MENU OUTER TABLE - BACKGROUND & TOP & BOTTOM MENU BORDERS */

.menutable 		{
			background-image: url("../picts/gray/menu.gif");
			background-color: #5A4E42;
			white-space: nowrap;
			width:100%;
			border-top: #888888 1px solid;
			border-bottom: #888888 1px solid;
			padding: 0px;
			margin: 0px;
			}


/* CODE FOR MENU 2ND OUTER TABLE */

#menunav, #menunav ul 	{
			float: left;
			white-space: nowrap;
			width: 100%;
			list-style: none;
			padding: 0px;
			border: solid #FFFFFF;
			border-width: 0px 0px 0px 0px;
			/* NOTE: BORDERs ABOVE ARE | top | right | bottom | left */
			margin: 0px 0px 0px 0px;
			}








/* TOP LEVEL MARGINS, FONT FACE & FONT COLORS & PADDING */

#menunav a 		{
			color: #FFFFFF;
			font: 12px arial, sans-serif;
			font-weight: bold;
			text-decoration: none;
			text-align: center;
			padding: 3px 5px 4px 5px;
			width: auto;
			display: block;
			cursor: pointer;
			}



/* TOP LEVEL BACKROUND COLOR AND BORDERS - EDIT MENU IMAGES ALSO */

#menunav li 		{
			background-image: url("../picts/gray/menu.gif");
			background-color:#5A4E42;
			border: solid #888888;
			border-width: 0px 1px 0px 0px;	/* THIS IS A RIGHT BORDER */
			/* NOTE: BORDERs ABOVE ARE | top | right | bottom | left */
			float: left;
			padding: 0;
			}



/* TOP LEVEL HOVER FONT COLOR */

#menunav li a:hover	{
			background-image: url("../picts/gray/menuon.gif");
			color: #0033FF;
			text-decoration: none;
			cursor: pointer;
			}




/* TOP LEVEL HOVER BACKGROUND COLOR AND BORDERS - EDIT MENU IMAGES ALSO */

#menunav li:hover, #menunav li.IEMhover
			{
			background-color: #B8B9BD;
			background-image: url("../picts/gray/menuon.gif");
			border: solid #888888;
			border-width: 0px 1px 0px 0px;	/* THIS IS A RIGHT BORDER */
			/* NOTE: BORDERs ABOVE ARE | top | right | bottom | left */
			}










/* SUB LEVEL FONT & FONT COLOR & PADDING */

#menunav li ul a 	{
			font: 11px verdana, arial, sans-serif;
			color: #666666;
			font-weight: normal;
			text-decoration: none;
			text-align: left;
			padding: 4px 0px 4px 0px;
			text-indent: 8px;
			cursor: pointer;
			}



/* SUB LEVEL FONT HOVER COLOR */

#menunav li ul a:hover 	{
			background-image: none;
			color: #000000;
			text-decoration: none;
			cursor: pointer;
			}


/* SUB LEVEL OUTER BORDER */

#menunav li ul 		{
			position: absolute;
			left: -999em;
			height: auto;
			width: 160px;
			border: solid #000000;
			border-width: 1px 1px 1px 1px;
			/* NOTE: BORDERs ABOVE ARE | top | right | bottom | left */
			margin: 0;
			}


/* SUB LEVEL BACKGROUND COLOR & BORDER OPTION FOR EACH LINK */

#menunav li ul li 	{
			background-image: none;
			background-color: #FFFFFF;
			border: solid #C0C0C0;
			border-width: 1px 0px 0px 0px;
			/* NOTE: BORDERs ABOVE ARE | top | right | bottom | left */
			}


/* SUB LEVEL HOVER BACKGROUND AND BORDERS */

#menunav li ul li:hover, #menunav li ul li.IEMhover
			{
			background-image: none;
			background-color:#CCCCCCj;
			border: solid #C0C0C0;
			border-width: 1px 0px 0px 0px;
			/* NOTE: BORDERs ABOVE ARE | top | right | bottom | left */
			}




/* SUB MENU WIDTH - ALSO EDIT TWO BELOW AND ONE ABOVE TO MATCH */

#menunav li li {
	padding-right: 0px;
	width: 160px;
}



/* SUB MENU LINK WIDTH */

#menunav li ul a {
	width: 160px;
}



/* FOR 3rd LEVEL MENU LOCATION */

#menunav li ul ul {
	margin: -21px 0px 0px 160px;
}





#menunav li:hover ul ul, #menunav li:hover ul ul ul, #menunav li.IEMhover ul ul, #menunav li.IEMhover ul ul ul
{ left: -999em; }

#menunav li:hover ul, #menunav li li:hover ul, #menunav li li li:hover ul, #menunav li.IEMhover ul, #menunav li li.IEMhover ul, #menunav li li li.IEMhover ul
{ left: auto; }







/* FOR 3rd LEVEL ARROW */

#menunav a.parent {
	background: url(../picts/menu-arrow.gif) center right no-repeat;
}

#menunav a.parent:hover {
	background: url(../picts/menu-arrow.gif) center right no-repeat;
}



#header_container {
background-image:url(images/header_slice.gif);
background-position:center top;
background-repeat:repeat-x;
 
margin:0 auto;
padding:0;
position:relative;
}

</style>


<script>
<!-- Begin

// AVAILABLE COLOR THEMES

//	gray
//	darkgreen
//	lightgreen
//	forest
//	green
//	teal



// EDIT THE VARIABLE BELOW WITH A CHOICE ABOVE (only in lowercase)


var colorstyle	 	= "rain"	// COLOR THEME

// COPYRIGHT 2009 © Allwebco Design Corporation
// Unauthorized use or sale of this script is strictly prohibited by law

// YOU DO NOT NEED TO EDIT BELOW THIS LINE

/*document.write('<link rel="StyleSheet" href="css/'+colorstyle+'.css" type="text/css">');
document.write('<link rel="StyleSheet" href="css/'+colorstyle+'-menu.css" type="text/css">');*/

//  End -->

<!-- Begin

function blockError(){return true;}
window.onerror = blockError;

// -->



<!-- Begin VIEWER AND POP-UP OPTIONS CODE

// ONLY USE lowercase FOR ALL OPTIONS




// GALLERY VIEWER OPTIONS

var viewer 		= "same"	// OPTIONS: | new | popup | same | New browser or a popup
var width 		= "800"		// WIDTH OF THE POPUP
var height 		= "625"		// HEIGHT OF THE POPUP
var scrollbars		= "yes"		// SHOW SCROLLBARS IN POPUP - yes OR no
var menu		= "yes"		// SHOW MENU IN POPUP - yes OR no
var tool		= "no"		// SHOW TOOLBAR IN POPUP - yes OR no



// FAQ POPUP OPTIONS

var FAQ_width 		= 500		// FAQ POPUP HEIGHT
var FAQ_height 		= 500		// FAQ POPUP HEIGHT
var faqscrollbarS 	= "0"		// TURN ON FAQ SCROLLBARS "1" FOR ON "0" FOR OFF
var FAQviewer	 	= "no"		// yes/ FAQ FULL SCREEN OR no/POPUP MODE






// COPYRIGHT 2009 © Allwebco Design Corporation
// Unauthorized use or sale of this script is strictly prohibited by law

// YOU DO NOT NEED TO EDIT BELOW THIS LINE






// START IMAGE VIEW CODE

function ViewImage(data) {
   if (viewer == "popup") {
    windowHandle = window.open('image-viewer.htm' + '?' + data,'windowName',',scrollbars='+scrollbars+',resizable=yes,toolbar='+tool+',menubar='+menu+',width='+width+',height='+height+'');

}
else if (viewer == "new") {
    windowHandle = window.open('image-viewer.htm' + '?' + data,'windowName');
}
else if (viewer == "same") {
    window.location = ('image-viewer.htm' + '?' + data);
}
}

// END IMAGE VIEW CODE










// START FAQ POPUP

function popUpFAQ(URL) {
day = new Date();
document.write('<a href="logout.jsp">Logout</a>');
id = day.getTime();
   if (FAQviewer == "no") {
eval("page" + id + " = window.open(URL, '" + id + "', 'toolbar=0,scrollbars=' + faqscrollbarS + ',location=0,statusbar=0,menubar=0,resizable=1,width='+FAQ_width+',height='+FAQ_height+'');");
}
else 
if (FAQviewer == "yes") {
eval("page" + id + " = window.open(URL);");
}
}









IEMhover = function() {
	var IEMh = document.getElementById("menunav").getElementsByTagName("LI");
	for (var i=0; i<IEMh.length; i++) {
		IEMh[i].onmouseover=function() {
			this.className+=" IEMhover";
		}
		IEMh[i].onmouseout=function() {
			this.className=this.className.replace(new RegExp(" IEMhover\\b"), "");
		}
	}
}
if (window.attachEvent) window.attachEvent("onload", IEMhover);












// End -->

<!-- Begin HEADER OPTIONS CODE

// ONLY USE lowercase FOR ALL OPTIONS

// CHANGE ANY OF THESE VARIABLES TO "no" OR "yes" TO TURN AN OPTION OFF OR ON




var color		= "666666"	// HEADER BACKGROUND COLOR (EDIT IN THE css FILE)
var flashheight		= "50"		// HEIGHT OF THE FLASH (IN PIXELS)
var flashwidth		= "750"		// WIDTH OF THE FLASH (IN PIXELS)

var showdate		= "yes"		// SHOW THE DATE ON THE PAGE
var stripes	 	= "yes"		// SHOW STRIPE UNDER THE FLASH





// COPYRIGHT 2009 © Allwebco Design Corporation
// Unauthorized use or sale of this script is strictly prohibited by law

// YOU DO NOT NEED TO EDIT BELOW THIS LINE

 document.write('<center><div id="header_container"><div id="header"><img border="0" src="images/logo.gif"/></a></div></div></center>');

document.write('<TABLE cellpadding="0" cellspacing="0" border="0" width="100%" BGCOLOR="#'+color+'">');

 
document.write('<PARAM NAME="quality" VALUE="high">');
document.write('<PARAM NAME="wmode" VALUE="transparent">');
document.write('<PARAM NAME="bgcolor" VALUE="#'+color+'">');
 

   if (stripes == "yes") {
document.write('</td></tr><tr class="printhide"><td class="pagebars">');
document.write('<img src="picts/spacer.gif" width="10" height="1"><br>');
}

document.write('</td></tr></table>');



// START DATE SCRIPT
   if (showdate == "yes") {

document.write('<div id="date-location" class="printhide">');
var d=new Date()

document.write("<span class=\"date-font\"><nobr>"+"<a href='logout.jsp'>Logout</a>");
document.write("&nbsp;&nbsp;"+"<a href='changepassword(Man).jsp'>ChangePassword</a>"+"&nbsp;&nbsp;&nbsp;&nbsp;")
var weekday=new Array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December")
document.write("<span class=\"date-font\"><nobr>" + weekday[d.getDay()] + " ")
document.write(monthname[d.getMonth()] + " ")
document.write(d.getDate() + ". ")
document.write(d.getFullYear())
document.write("</nobr><br></span>")
document.write('</div>');
}


//  End -->
<!-- Begin CSS Horizontal Menu - menu ver 3.15 2009

// NOTE: If you use a ' add a slash before it like this \'


var menuside		= "left"	// MENU SIDE | left | right | center
var fixwrap		= "no"		// MAKE yes ONLY IF MENUS ARE WRAPPING
var menuwidth		= "900"		// TOTAL MENU WIDTH TO FIX WRAP



document.write('<table cellpadding="0" cellspacing="0" border="0" class="menutable"><tr><td class="printhide" align="'+menuside+'">');
document.write('<table cellpadding="0" cellspacing="0" border="0"><tr><td>');
document.write('<ul id="menunav">');




// START MENU LINKS - EDIT BELOW THIS AREA
document.write('<li style="width:100px"><a href="First page(Man).jsp"> Home</a></li>');

document.write('<li style="width: 160px;"><a href="#">Manufacture Products</a>'); 
document.write('<ul>');
document.write('<li><a href="Received Orders(Man).jsp"><img src="receive.jpg" width="15" height="15" border="0"/> Receive Orders</a></li>');
document.write('<li><a href="AddPro(Man).jsp"><img src="add.png" width="15" height="15" border="0"/> Add Products</a></li>');
document.write('<li><a href="RePro(Man).jsp"><img src="remove.gif" width="15" height="15" border="0"/> Remove Products</a></li>');
document.write('</ul>');
document.write('</li>');

document.write('<li style="width: 140px;"><a href="#">Manage Products</a>'); 
document.write('<ul>');
document.write('<li><a href="Update Prices(Man).jsp"><img src="Update1.png" width="15" height="15" border="0"/> Update Prices</a></li>');
document.write('<li><a href="Received Feedback(Man).jsp"><img src="feedback-icon.jpg" width="15" height="15" border="0"/> Receive Feedback</a></li>');
document.write('<li><a href="sms.jsp"><img src="sms.jpg" width="15" height="15" border="0"/> Send SMS Alerts</a></li>');
document.write('</ul>');
document.write('</li>');

document.write('<li style="width: 140px;"><a href="#">Sales Transactions</a>');
document.write('<ul>');
document.write('<li><a href="Generate Bill(Man).jsp"><img src="donate.gif" width="15" height="15" border="0"/> Generate Bill</a></li>');
document.write('<li><a href="Generate Notice(Man).jsp"><img src="not.gif" width="15" height="15" border="0"/> Generate Notice</a></li>');
document.write('</ul>');
document.write(' </li>');



document.write('  <li style="width: 140px;"><a href="SMS Not(Man).jsp">SMS Notification</a>');
document.write('  </li>');

document.write('  <li style="width: 140px;"><a href="Chats.jsp">Chat Room</a>');

document.write('  </li>');

// END LINKS //

document.write('</td></tr></table>');
   if (fixwrap == "no") {
//document.write('<img src="images1.jpg"><br>');
}
document.write('</td></tr></table>');



var paragraph_1 	= "no";

document.write('<br><br>');
document.write('<marquee>');
document.write('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
document.write('&nbsp;&nbsp;');
document.write('<img src="nvidia_logo2.jpg">');document.write('&nbsp;&nbsp;');
document.write('<img src="524633_fpx.tif.jpg">');document.write('&nbsp;&nbsp;');
document.write('<img src="sony_logo.jpg">');document.write('&nbsp;&nbsp;');
document.write('<img src="1518.jpg">');document.write('&nbsp;&nbsp;');
document.write('<img src="barnes.jpg">');document.write('&nbsp;&nbsp;');
document.write('<img src="green_apple_logo.jpg">');document.write('&nbsp;&nbsp;');
document.write('<img src="EA_logo.jpg">');document.write('&nbsp;&nbsp;');
document.write('<img src="Canon_logo.jpg">');
document.write('</marquee>');
document.write('<br><br>');
// SHOW THE 1ST PARAGRAPH
var paragraph_2 	= "no"		// SHOW THE 2ND PARAGRAPH
var showimage		= "no"		// SHOW A SIDEBAR IMAGE

var topspacing		= "10"		// NUDGE SIDEBAR DOWN
var sidewidth		= "125"		// SIDEBAR WIDTH





// NUDGE SPACER
/*document.write('<img src="picts/spacer.gif" height="'+topspacing+'" width="'+sidewidth+'"><br>');

document.write('<table cellpadding="5" cellspacing="10" border="0" class="sidebartext-right"><tr><td>');*/







// START RIGHT SIDEBAR AREA PARAGRAPH 1 EDIT THIS AREA

/*   if (paragraph_1 == "yes") {

document.write('<fieldset><legend>');


document.write('Notes Area<br></legend>');

document.write('You can edit this side bar area with your own text or add links or small images here as well. <a href="contact.htm">Contact us...</a><br>');

document.write('</fieldset>');
document.write('<br><br>');

}
// END RIGHT SIDEBAR AREA PARAGRAPH 1







// SMALL PICTURE AREA

   if (showimage == "yes") {

document.write('<br><center>');
document.write('<a href="index.html"><img src="picts/sidebar-right.jpg" border="0" class="borders"></a><br>');
document.write('</center>');
document.write('<br><br>');
}







// START RIGHT SIDEBAR AREA PARAGRAPH 2 EDIT THIS AREA

   if (paragraph_2 == "yes") {

document.write('<fieldset><legend>');

document.write('Notes Area<br></legend>');

document.write('You can also turn off this area in the sidebar-right.js and have no right side bar showing in this area.<br>');

document.write('</fieldset>');
document.write('<br><br>');

}
// END RIGHT SIDEBAR AREA PARAGRAPH 2







document.write('</td></tr></table>');


// -- END -->


*/
</script>


<body>
<%!
Connection con;
Statement st;
ResultSet rs;
HttpSession ses;
String s1;
String s2;
String s3;
String s4;
String s5;
String s6;
String s7;
String s8;
String s9;
String s10;
String s11;
String s12;
String s13;
String s14;

public void jspInit(){
	ServletContext ctx=getServletContext();
	//System.out.println("Driver laoded11");
	con=(Connection)ctx.getAttribute("Connection");
	//System.out.println("Connection laoded11");
	try{
	st=con.createStatement();
	} 
	catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 

}
%>
<%
ses=request.getSession();
rs=st.executeQuery("select * from DTLS where frn='"+ses.getAttribute("col10")+"'");
while(rs.next()){	
    s1=rs.getString(1);
	s2=rs.getString(2);
	s3=rs.getString(3);
	s4=rs.getString(4);
	s5=rs.getString(5);
	s6=rs.getString(6);
	s7=rs.getString(7);
	s8=rs.getString(8);
	s9=rs.getString(9);
	s10=rs.getString(10);
	s11=rs.getString(11);
	s12=rs.getString(12);
	s13=rs.getString(13);
	s14=rs.getString(14);}
%>

<table cellpadding="5" cellspacing="0" border="0" width="100%"><tr><td align="left" valign="top" class="just">

<div id="div5">
<form action="http://localhost:8080/TGMC/VDC" method="post"><table align="center" cellpadding="10">

<tr><td><font style="font-family: Comic Sans MS">First Name<sup>*</sup>:</font></td><td><input  type="text" name="fname" id="fn" value="<%=s5%>"></td></tr>
<tr><td><font style="font-family: Comic Sans MS">Last Name<sup>*</sup>:</font></td><td><input type="text" name="lname" id="ln" value="<%=s6%>"></td></tr>
 <tr><td><font style="font-family: Comic Sans MS">Gender<sup>*</sup>:</font></td><td>
<select name="sex"><option value=<%=(ses.getAttribute("col7").toString())%>><%=(ses.getAttribute("col7").toString())%></option>
 <option value="Select">Select</option>
 <option value="Male">Male</option> 
<option value="Female">Female</option> 
 </select></td></tr>
<tr><td><font style="font-family: Comic Sans MS">Country<sup>*</sup>:</font></td><td>
<select name="selCountry">
<option value="<%=s8%>"><%=(ses.getAttribute("col8").toString())%></option> 
<option value="Select">Select</option> 
<option value="Afghanistan">Afghanistan</option>  
<option value="Albania">Albania</option> 
<option value="Algeria">Algeria</option> 
<option value="Andorra">Andorra</option> 
<option value="Angola">Angola</option> 
<option value="Anguilla">Anguilla</option> 
<option value="Antarctica">Antarctica</option> 
<option value="Argentina">Argentina</option> 
<option value="Australia">Australia</option> 
<option value="Austria">Austria</option> 
<option value="Bahamas">Bahamas</option> 
<option value="Bahrain">Bahrain</option> 
<option value="Bangladesh">Bangladesh</option> 
<option value="Barbados">Barbados</option> 
<option value="Belarus">Belarus</option> 
<option value="Belgium">Belgium</option> 
<option value="Bermuda">Bermuda</option> 
<option value="Bhutan">Bhutan</option> 
<option value="Bolivia">Bolivia</option> 
<option value="Botswana">Botswana</option> 
<option value="Brazil">Brazil</option> 
<option value="Cambodia">Cambodia</option> 
<option value="Cameroon">Cameroon</option> 
<option value="Canada">Canada</option> 
<option value="Cape Verde">Cape Verde</option> 
<option value="Cayman Islands">Cayman Islands</option> 
<option value="Chile">Chile</option> 
<option value="China">China</option> 
<option value="Colombia">Colombia</option> 
<option value="Congo">Congo</option> 
<option value="Costa Rica">Costa Rica</option> 
<option value="Croatia">Croatia</option> 
<option value="Cuba">Cuba</option> 
<option value="Cyprus">Cyprus</option> 
<option value="Czech Republic">Czech Republic</option> 
<option value="Denmark">Denmark</option> 
<option value="Ecuador">Ecuador</option> 
<option value="Egypt">Egypt</option> 
<option value="Estonia">Estonia</option> 
<option value="Ethiopia">Ethiopia</option> 
<option value="Fiji">Fiji</option> 
<option value="Finland">Finland</option> 
<option value="France">France</option> 
<option value="Georgia">Georgia</option> 
<option value="Germany">Germany</option> 
<option value="Ghana">Ghana</option> 
<option value="Greece">Greece</option> 
<option value="Greenland">Greenland</option> 
<option value="Guinea">Guinea</option> 
<option value="Guyana">Guyana</option> 
<option value="Hong Kong">Hong Kong</option> 
<option value="Hungary">Hungary</option> 
<option value="Iceland">Iceland</option> 
<option value="India">India</option> 
<option value="Indonesia">Indonesia</option> 
<option value="Iran">Iran</option> 
<option value="Iraq">Iraq</option> 
<option value="Ireland">Ireland</option> 
<option value="Israel">Israel</option> 
<option value="Italy">Italy</option> 
<option value="Jamaica">Jamaica</option> 
<option value="Japan">Japan</option> 
<option value="Jordan">Jordan</option> 
<option value="Kazakhstan">Kazakhstan</option> 
<option value="Kenya">Kenya</option> 
<option value="Korea">Korea</option> 
<option value="Kuwait">Kuwait</option> 
<option value="Kyrgyzstan">Kyrgyzstan</option> 
<option value="Madagascar">Madagascar</option> 
<option value="Malawi">Malawi</option> 
<option value="Malaysia">Malaysia</option> 
<option value="Maldives">Maldives</option> 
<option value="Mali">Mali</option> 
<option value="Mauritius">Mauritius</option> 
<option value="Mayotte">Mayotte</option> 
<option value="Mexico">Mexico</option> 
<option value="Monaco">Monaco</option> 
<option value="Mongolia">Mongolia</option> 
<option value="Montenegro">Montenegro</option> 
<option value="Morocco">Morocco</option> 
<option value="Mozambique">Mozambique</option> 
<option value="Myanmar">Myanmar</option> 
<option value="Namibia">Namibia</option> 
<option value="Nepal">Nepal</option> 
<option value="Netherlands">Netherlands</option> 
<option value="New Zealand">New Zealand</option> 
<option value="Nigeria">Nigeria</option> 
<option value="Norway">Norway</option> 
<option value="Oman">Oman</option> 
<option value="Pakistan">Pakistan</option> 
<option value="Palau">Palau</option> 
<option value="Paraguay">Paraguay</option> 
<option value="Peru">Peru</option> 
<option value="Philippines">Philippines</option> 
<option value="Poland">Poland</option> 
<option value="Portugal">Portugal</option> 
<option value="Qatar">Qatar</option> 
<option value="Romania">Romania</option> 
<option value="Russian Federation">Russian Federation</option> 
<option value="Saint Lucia">Saint Lucia</option> 
<option value="Saint Martin">Saint Martin</option> 
<option value="Samoa">Samoa</option> 
<option value="San Marino">San Marino</option> 
<option value="Saudi Arabia">Saudi Arabia</option> 
<option value="Senegal">Senegal</option> 
<option value="Serbia">Serbia</option> 
<option value="Seychelles">Seychelles</option> 
<option value="Sierra Leone">Sierra Leone</option> 
<option value="Singapore">Singapore</option> 
<option value="Slovakia">Slovakia</option> 
<option value="Slovenia">Slovenia</option> 
<option value="Solomon Islands">Solomon Islands</option> 
<option value="Somalia">Somalia</option> 
<option value="South Africa">South Africa</option> 
<option value="Spain">Spain</option> 
<option value="Sri Lanka">Sri Lanka</option> 
<option value="Sudan">Sudan</option> 
<option value="Sweden">Sweden</option> 
<option value="Switzerland">Switzerland</option> 
<option value="Syrian Arab Republic">Syrian Arab Republic</option> 
<option value="Taiwan">Taiwan</option> 
<option value="Thailand">Thailand</option> 
<option value="Togo">Togo</option> 
<option value="Tokelau">Tokelau</option> 
<option value="Tonga">Tonga</option> 
<option value="Trinidad and Tobago">Trinidad and Tobago</option> 
<option value="Tunisia">Tunisia</option> 
<option value="Turkey">Turkey</option> 
<option value="Uganda">Uganda</option> 
<option value="Ukraine">Ukraine</option> 
<option value="United Arab Emirates">United Arab Emirates</option> 
<option value="United Kingdom">United Kingdom</option> 
<option value="United States">United States</option> 
<option value="Uruguay">Uruguay</option> 
<option value="Uzbekistan">Uzbekistan</option> 
<option value="Vanuatu">Vanuatu</option> 
<option value="Venezuela">Venezuela</option> 
<option value="Vietnam">Vietnam</option> 
<option value="Yemen">Yemen</option> 
<option value="Zambia">Zambia</option> 
<option value="Zimbabwe">Zimbabwe</option> 
<option value="Other">Other</option> 
</select>
  <tr><td><font style="font-family: Comic Sans MS">Category<sup>*</sup>:</font></td><td><input type="text" name="org" id="cat" readonly="readonly" value="<%=s1%>"></td></tr>
  <tr><td><font style="font-family: Comic Sans MS">Organisation<sup>*</sup>:</font></td><td><input type="text" name="org" id="ORG" value="<%=s9%>"></td></tr>
  <tr><td><font style="font-family: Comic Sans MS">Firm Registration Number<sup>*</sup>:</font></td><td><input type="text" name="firm" id="frn" disabled="disabled" value="<%=s10%>"></td></tr>
  <tr><td><font style="font-family: Comic Sans MS">Telephone<sup>*</sup>:</font></td><td>
  <input type="text" name="tel" id="tp" value="<%=s11%>"></td></tr>
   <tr><td><font style="font-family: Comic Sans MS">Fax:</font></td><td>
  <input type="text" name="fx" id="FX" value="<%=s12%>"></td></tr>
  <tr><td><font style="font-family: Comic Sans MS">E-Mail<sup>*</sup>:</font></td><td><input type="text" name="em" id="emp" value="<%=s13%>">
  </td></tr>
  <tr><td><font style="font-family: Comic Sans MS">Address<sup>*</sup>:</font></td></tr>
  <tr><td></td><td><textarea name="add" id="ADD" rows="5" cols="20"><%=s14%></textarea></td></tr>
  <tr><td><input type="submit" value="Update!!!"  id="butt" class="sub" name="submit" >
</table>
</form></div></td></tr></table>

</body>
 <hr class="page-splits">
<br><br>
<!-- PARAGRAPH 3 -->








<!-- BOTTOM LINK -->
<center>
<a href="http://www.kmit.in"><I>Designed by KMIT CHARGERS</I></a><br>
</center>
  



</HTML>





