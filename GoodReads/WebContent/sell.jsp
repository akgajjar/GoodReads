<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html><head>
    <!-- //Meta tag Keywords -->
    <title>Clack Website Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- //Meta tag Keywords -->
    <!-- Custom-Files -->
    <link rel="stylesheet" href="sell/css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <!--/ Style-CSS -->
    <link rel="stylesheet" href="sell/css/style.css" type="text/css" media="all">
    <!--// Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
  <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900" rel="stylesheet">
    <!-- //Fonts -->
</head>


<body data-gr-c-s-loaded="true">
<div class="form-26-mian bg bg1" style="background-color: rgba(0, 0, 0, 0); margin-top: 0px; background-image: url(&quot;loginimages/411522.jpg&quot;); background-size: 150%;">
		
    <div id="page" class="page">
        <div id="home" style="outline: none; cursor: inherit;">
        
           <div>f
        <%@include file="header.jsp" %>
        </div>
        

        </div>

       
        <!---->
        <!--// mian-content -->
        <!-- banner -->
        <section class="ab-info-main py-5 editContent" style="outline: none; cursor: inherit;">
            <div class="container py-3">
                <h3 class="tittle text-center editContent" style="outline: none; cursor: inherit; color: white;"><span class="sub-tittle editContent" style="outline: none; cursor: inherit;">Sele Here</span> Books Details</h3>
                <div class="row contact-main-info mt-15">
                    <div class="col-md-8 contact-right-content">
                    
                        <form action="Book_masterController" method="post">
                        
                            <div class="form-control editContent" style="outline: none; cursor: inherit;">
                                <input type="text" name="isbn" placeholder="ISBN" required="">
                            </div>
                            <div class="form-control editContent" style="outline: none; cursor: inherit;">
                                <input type="text" class="name" name="bname" placeholder="Book Name" required="">
                            </div>
                            <div class="form-control editContent" style="outline: none; cursor: inherit;">
                                <input type="text" name="bauthor" placeholder="Author Name" required="">
                            </div>
                            <div class="form-control editContent" style="outline: none; cursor: inherit;">
                                <input type="text" name="bprice" onkeypress="return isNumber(event)" placeholder="Book Price" required="">
                            </div>
                            <div class="form-control editContent" style="outline: none; cursor: inherit;">
                                <input type="text" name="bpages" onkeypress="return isNumber(event)" placeholder="Book Pages" required="">
                            </div>
                            <div class="form-control editContent" style="outline: none; cursor: inherit;">
                                    <div class="custom-select" style="width:100%;">
                                            <select >
                                              <option value="0">Select Book Selling Type:</option>
                                              <option value="1">Rent</option>
                                              <option value="2">Sale</option>
                                        </select>
                                    </div>
                            </div>
                            <div class="form-control editContent" style="outline: none; cursor: inherit;">
                                <textarea name="bdescription" placeholder="Book Description" required=""></textarea>
                            </div>
                            <div class="read mt-3">
                                <input name="action" class="btn bt1" type="submit" style="outline: none; cursor: inherit; color: red;" value="Sell">
                            </div>
                        </form>
                    </div>
                </div>
                
            </div>
        </section>
    </div>
</body>
    <script>
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }

        var x, i, j, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < selElmnt.length; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);

    </script>
</html>