<%@ page language="java" import="java.sql.Statement,java.sql.Connection,java.io.PrintWriter,java.sql.ResultSet,java.sql.DriverManager,java.util.LinkedList,java.util.List,java.util.ListIterator" contentType="text/html; charset=ISO-8859-1"
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
    text-align :center;
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
text-align :center;
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
text-align :center;
	scrollbar-base-color: #AEAFBB;
	scrollbar-track-color: #C0C0C0;
	backgroUnd-color: #000000;
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

.headercolor		{ background-color: #AEAFBB; }






/* NON GALLERY IMAGE BORDERS */

.borders		{ border: #000000 1px solid; }






/* SHADOW AND CORNER IMAGE */

#cornerimage		{ background-image: url("../picts/gray/corner.gif"); }

.pageheight		{ background-image: url("../picts/shadow-vertical.gif"); background-repeat: repeat-y; }

.shadow-horizontal	{ background-image: url("../picts/shadow-horizontal.gif"); background-repeat: repeat-x; }






/* PAGE LINES & BORDERS */

.pagebars	{
		background-color: #C0C0C0;
		background-image: url("../picts/gray/bar.jpg");
		height: 20px;
		border: solid #000000;
		border-width: 0px 0px 0px 0px;
		/* NOTE: BORDERs ABOVE ARE | top | right | bottom | left */
		}

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
text-align :center;
			background-color: #FFFFFF;
			background-image: url("../picts/gray/background-scroller.jpg");
			background-repeat: repeat-y;
			}

.scrollertitle 		{ color: #6666FF; font-family: arial, Tahoma, Verdana, sans-serif; font-size: 13px; font-weight: bold; }

.scrollertext 		{ color: #000000; font-family: Tahoma, Verdana, sans-serif; font-size: 11px; font-weight: normal; }



/* SCROLLER LINK COLORS */

a.scroller:link, a.scroller:visited, a.scroller:active	{ color: #3300FF; text-decoration: none; }

a.scroller:hover					{ color: #0000FF; text-decoration: none; }

#FF6600#0000FF












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
			background-color: #A4A6AC;
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
			background-color: #A4A6AC;
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
			background-color: #CCCCCC;
			border: solid #C0C0C0;
			border-width: 1px 0px 0px 0px;
			/* NOTE: BORDERs ABOVE ARE | top | right | bottom | left */
			}




/* SUB MENU WIDTH - ALSO EDIT TWO BELOW AND ONE ABOVE TO MATCH */

#menunav li li {
	padding-right: 0px;
	width: 160px;
}

#div4
{
font-family: Comic Sans MS;
}

#div5
{
padding-left:08em;
}
#paddin
{
padding-left:16em;
}
#cen
{
padding-right:6em;
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



document.write('<TABLE cellpadding="0" cellspacing="0" border="0" width="100%" BGCOLOR="#'+color+'"><tr><td align="left" class="headercolor">');
document.write('<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" WIDTH="'+flashwidth+'" HEIGHT="'+flashheight+'" id="logo">');
document.write('<PARAM NAME="movie" VALUE="logo.swf">');
document.write('<PARAM NAME="quality" VALUE="high">');
document.write('<PARAM NAME="wmode" VALUE="transparent">');
document.write('<PARAM NAME="bgcolor" VALUE="#'+color+'">');
document.write('<EMBED src="logo.swf" quality="high" wmode="transparent" bgcolor="#'+color+'" WIDTH="'+flashwidth+'" HEIGHT="'+flashheight+'" NAME="logo" TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer"></EMBED></OBJECT><br>');


   if (stripes == "yes") {
document.write('</td></tr><tr class="printhide"><td class="pagebars">');
document.write('<img src="picts/spacer.gif" width="10" height="1"><br>');
}

document.write('</td></tr></table>');



// START DATE SCRIPT
   if (showdate == "yes") {

document.write('<div id="date-location" class="printhide">');
var d=new Date()
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


document.write(' <li style="width: 110px;"><a href="First page(Man).jsp">Home</a></li>');
document.write('</li>');

document.write(' <li style="width: 140px;"><a href="#">Manufacture Products</a>'); 
document.write('    <ul>');
document.write('      <li><a href="Received Orders(Man).jsp">Received Orders</a></li>');
document.write('      <li><a href="Update Products(Dis).html">Update Products</a></li>');
document.write('    </ul>');
document.write('  </li>');

document.write('<li style="width: 140px;"><a href="#">Manage Products</a>'); 
document.write('<ul>');
document.write('<li><a href="Update Prices(Man).html">Update Prices</a></li>');
document.write('<li><a href="#">Inform Dis-Availability</a></li>');
document.write('<li><a href="Receive Feedback(Man).html">Receive Feedback</a></li>');
document.write('<li><a href="Send SMS(Man).html">Send SMS Alerts</a></li>');
document.write('</ul>');
document.write('</li>');

document.write('<li style="width: 110px;"><a href="#">Sales Transactions</a>');
document.write('<ul>');
document.write('<li><a href="#">Generate Bill</a></li>');
document.write('</ul>');
document.write(' </li>');


document.write('  <li style="width: 140px;"><a href="#">Polls,Chats,Forums</a>');
document.write('    <ul>');
/*document.write('      <li><a href="site_map.htm">Site Map</a></li>');
document.write('      <li><a href="faq-home.htm">F.A.Q.</a></li>');
document.write('      <li><a href="contact.htm">Contact Us</a></li>');
document.write('      <li><a href="careers.htm">Careers</a></li>');
document.write('      <li><a href="PDFgallery.htm" target="_blank">PDF Downloads</a></li>');*/
document.write('    </ul>');
document.write('  </li>');

document.write('<li style="width: 110px;"><a href="#">Advertise</a></li>');

document.write('<li style="width: 110px;"><a href="#">Enquire</a></li>');

document.write('<li style="width: 110px;"><a href="#">SMS Notification</a></li>');

document.write('<li style="width: 110px;"><a href="#">Groups</a></li>');

// END LINKS //



//document.write('</ul>');
document.write('</td></tr></table>');
   if (fixwrap == "no") {
//document.write('<img src="images1.jpg"><br>');
}
document.write('</td></tr></table>');

// END -->

<!-- Begin

// NOTE: If you use a ' add a slash before it like this \'

// NOTE: For no allwebco copyright erase only the next 2 lines







document.write('<br>');




//  End -->

<!-- Begin

// NOTE: If you use a ' add a slash before it like this \'

/*document.write('<span class ="footer">&copy;Copyright 2009 ');

document.write('<a href="index.html" target="_top">Your Company</a> ');

document.write('All Rights Reserved<br>');

document.write('For more information feel free to '); 

document.write(' <A HREF="contact.htm">Contact Us</a>');

document.write('</span><br>');

//  End -->

<!-- Begin

// CHANGE ANY OF THESE VARIABLES TO "no" OR "yes" TO TURN AN OPTION OFF OR ON

// ONLY USE lowercase FOR ALL OPTIONS

*/


var paragraph_1 	= "no";
document.write('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="title">Welcome:  (First Name)</span>');
document.write('<br><br><br>');
document.write('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images1.jpg">/*Persons Photo*/');// SHOW THE 1ST PARAGRAPH
/*var paragraph_2 	= "no"		// SHOW THE 2ND PARAGRAPH
var showimage		= "no"		// SHOW A SIDEBAR IMAGE

var topspacing		= "10"		// NUDGE SIDEBAR DOWN
var sidewidth		= "125"		// SIDEBAR WIDTH
*/




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
	System.out.println("Driver laoded11  VDC");
	con=(Connection)ctx.getAttribute("Connection");
	System.out.println("Connection laoded11");
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
rs=st.executeQuery("select * from DTLS where userid='"+ses.getAttribute("userid")+"'");
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
	s14=rs.getString(14);
}
%>




<body>
<table cellpadding="5" cellspacing="0" border="0" width="100%"><tr><td align="left" valign="top" class="just">

<div id="div5">
<form action="http://localhost:8080/TGMC/First page(Man).jsp"><table align="center" cellpadding="10">

<tr><td><font style="font-family: Comic Sans MS">First Name<sup>*</sup>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  type="text" name="fname" id="fn" readonly="readonly"  value="<%=s5%>"></font></td></tr>

<tr><td><font style="font-family: Comic Sans MS">Last Name<sup>*</sup>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
<input type="text" name="lname" id="ln" readonly="readonly" value="<%=s6%>"></font></td></tr>

 <tr><td><font style="font-family: Comic Sans MS">Gender<sup>*</sup>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  type="text" name="sex" id="sx" readonly="readonly" value="<%=s7%>"></font></td></tr>

<tr><td><font style="font-family: Comic Sans MS">Country<sup>*</sup>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  type="text" name="selCountry" id="SC" readonly="readonly" value="<%= s8%>"></font></td></tr>

<tr><td><font style="font-family: Comic Sans MS">Category<sup>*</sup>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="cat" id="CAT" readonly="readonly" value="<%=s1%>"></font></td></tr>
  
<tr><td><font style="font-family: Comic Sans MS">Organisation<sup>*</sup>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="org" id="ORG" readonly="readonly" value="<%=s9%>"></font></td></tr>
  
<tr><td><font style="font-family: Comic Sans MS">Firm Registration Number<sup>*</sup>:&nbsp;&nbsp;&nbsp;
<input type="text" name="firm" id="frn" readonly="readonly" value="<%=(ses.getAttribute("col10").toString())%>"></font></td></tr>

<tr><td><font style="font-family: Comic Sans MS">Telephone<sup>*</sup>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="tel" id="tp" readonly="readonly" value="<%=s11%>"></font></td></tr>

<tr><td><font style="font-family: Comic Sans MS">Fax:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="fx" id="FX" readonly="readonly" value="<%=s12%>"></font></td></tr>

<tr><td><font style="font-family: Comic Sans MS">E-Mail<sup>*</sup>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="text" name="em" id="emp" readonly="readonly" value="<%=s13%>"></font></td></tr>

<tr><td><font style="font-family: Comic Sans MS">Address<sup>*</sup>:</font></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<textarea name="add" id="ADD" readonly="readonly" rows="5" cols="20"><%=s14%></textarea></td></tr>

<tr><td><font style="font-family: Comic SansMS">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="submit" value="Finish!!!"  id="sub" class="sub" name="sub"></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

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
  






<!-- <br><br>

<img src="picts/spacer.gif" width="310" height="10" alt="image"><br>

<br><br>





</td><td align="center" valign="top" width="5">

<img src="picts/spacer.gif" width="5" height="5" alt="image"><br>

</td><td align="center" valign="top" class="sidebarright-width">

<!-- RIGHT SIDEBAR AREA -->

<!-- <script language="JavaScript" type="text/javascript" src="sidebar-right.js"></script>

</td></tr></table> -->
<!-- CONTENT TABLE -->





<!-- SPLIT TABLE -->



<!-- PAGE TABLE -->





<!-- BOTTOM PAGEBAR -->
<!-- <table cellpadding="0" cellspacing="0" border="0" width="100%"><tr class="printhide"><td class="pagebar-bottom">
<img src="picts/spacer.gif" width="10" height="1" alt="image"><br>
</td></tr></table>
 -->



<!-- PAGE TABLE -->

<!-- </td></tr><tr><td class="shadow-horizontal"> -->




<!-- COPYRIGHT -->
<!-- <table cellpadding="6" cellspacing="0" border="0" width="100%"><tr><td align="left" valign="top">

<script language="JavaScript" type="text/javascript" src="copyright.js"></script>

</td><td align="right" valign="top">

<script language="JavaScript" type="text/javascript" src="copyright-allwebco.js"></script>

</td></tr></table> -->

<!-- COPYRIGHT -->





<!-- END OUTER PAGE TABLE -->



</HTML>





