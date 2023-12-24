<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Program1.aspx.vb" Inherits="Program1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Accounting Programs</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style type="text/css" >
        .Divimag { display:inline-block; width:25% ;padding :30px;height: 270px;}
        .imag{width:100% ;height: 100%;}
    </style>

    <style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 900px;
  height: 730px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
  background-color: rgba(0,0,0,0.8)
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  /*background-color: rgba(0,0,0,0.8);*/
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>
</head>

<body style="padding: 0px; margin: 0px">
    <form id="form1" runat="server" >
       
        <div align="left" style="color: aliceblue; padding:15px 0px 15px 30px; background-color: midnightblue ;
              font-family:'Freestyle Script'; font-size: 54px; font-weight: bolder">
            Accounting Programs
        </div>

        <div align="right" style="padding: 0px 30px 0px 30px; font-family:'Segoe Script'; font-size: 32px; font-weight: bolder;float:left">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/index.aspx">Back</asp:LinkButton>
        </div>
        <div align="right" style="padding: 5px 30px 0px 30px; font-family:'Arial'; font-size: 26px; font-weight: bolder;float: right">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Program11.aspx">Download</asp:LinkButton>
        </div>

<div class="slideshow-container">
        <div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="Pic/P1.png" style="width:100%; height :100%;" />
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="Pic/P11.png" style="width:100%; height :100%;" />
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="Pic/P12.png" style="width:100%; height :100%;" />
  <div class="text">Caption Three</div>
</div>

<a class="prev" onclick="plusSlides(-1)">❮</a>
<a class="next" onclick="plusSlides(1)">❯</a>

</div>
<br/>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

        <br />
        
        <div align="center" style="background-color: #99CCFF; padding-left:90px ; padding-right:90px;">
            <br />
            <h3>برنامج محاسبة المعاملات المالية اليومية للمؤسسة وتسجلها، بما في ذلك إدارة الأصول الثابتة وإدارة النفقات وإدارة الإيرادات وحسابات المقبوضات وحسابات المدفوعات ومحاسبة دفتر الأستاذ الفرعي وإعداد التقارير والتحليلات. يتتبع نظام المحاسبة الكامل أصول المؤسسة والتزاماتها وإيراداتها</h3>
           
            <br />
        </div>

        <div align="center" style="background-color: midnightblue ; color :white ">
            <br />
            <h4>by: Shreen Shoaib - BIS</h4>
            <br />
        </div>
    </form>
</body>
<script>
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
</html>
