<%@page import="topgear.AutoOverzicht" %>
<%@page import="topgear.Auto" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    AutoOverzicht overzicht = new AutoOverzicht();
    ArrayList<Auto> lijst = overzicht.getAutolijst();
    ArrayList<String> merken = new ArrayList();
    String divs = "";
    String options = "";
    String modal = "";
    int minPrijs = 0;
    int maxPrijs = Integer.MAX_VALUE;
    
    for(int i = 0; i < lijst.size(); i++){
        if(!merken.contains(lijst.get(i).getMerk())){
            merken.add(lijst.get(i).getMerk());
        }
    }
    
    for(int i = 0; i < merken.size(); i++){
        options += "<option value=\"" + merken.get(i) + "\">" + merken.get(i) + "</option>";
    }
    
    if (request.getParameter("knop1") != null){
        if(!(request.getParameter("minPrijs") == "")){
            minPrijs = Integer.parseInt(request.getParameter("minPrijs"));
        }
        if(!(request.getParameter("maxPrijs") == "")){
            maxPrijs = Integer.parseInt(request.getParameter("maxPrijs"));
        }

        for(int i = 0; i < lijst.size(); i++){
            if(lijst.get(i).getPrijs() >= minPrijs && lijst.get(i).getPrijs() <= maxPrijs){
                divs += "<div class=\"panel panel-default\" style=\"width:350px; height:220px; float:left margin-left:20px\">";
                divs += "<div class=\"panel-heading\"><h3 class=\"panel-title\" style=\"text-align: center\">" +  lijst.get(i).getMerk() + " " + lijst.get(i).getModel() + "</h3></div>";
                divs += "<div class=\"panel-body\" style=\"text-align: center\"><div style=\"float:left\"><img src=\"img/" +lijst.get(i).getImg() + ".jpg\" width=\"200\" height=\"100px\" class=\"img-thumbnail\" alt=\"Responsive image\"></div>";
                divs += "<div style=\"float:left; margin-top:50px; margin-left:10px\">&euro; " + lijst.get(i).getPrijsFormat() + "</div></div></div>";
            }
        }
    }
    
    else if (request.getParameter("knop2") != null){
        String merk = request.getParameter("merk");
        for(int i = 0; i < lijst.size(); i++){
            if(lijst.get(i).getMerk().equals(merk) || merk.equals("alles")){
                divs += "<div class=\"panel panel-default\" style=\"float:left; width:350px; height:220px; margin-left:20px\">";
                divs += "<div class=\"panel-heading\"><h3 class=\"panel-title\" style=\"text-align: center\">" +  lijst.get(i).getMerk() + " " + lijst.get(i).getModel() + "</h3></div>";
                divs += "<div class=\"panel-body\" style=\"text-align: center\"><div style=\"float:left\"><img src=\"img/" +lijst.get(i).getImg() + ".jpg\" width=\"200\" height=\"100px\" class=\"img-thumbnail\" alt=\"Responsive image\"></div>";
                divs += "<div style=\"float:left; margin-top:30px; margin-left:10px\">&euro; " + lijst.get(i).getPrijsFormat();
                divs += "<hr><button class=\"btn btn-default btn-xs\" data-toggle=\"modal\" data-target=\"#mdl" + lijst.get(i).getModel() + "\">Specificaties</button></div></div></div>";
                
                modal += "<div class=\"modal fade\" id=\"mdl" + lijst.get(i).getModel() + "\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\"><div class=\"modal-dialog\"><div class=\"modal-content\"><div class=\"modal-header\"><button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>";
                modal += "<h4 class=\"modal-title\" id=\"myModalLabel\">" + lijst.get(i).getMerk() + " " + lijst.get(i).getModel() + "</h4>";
                modal += "</div><div class=\"modal-body\"><div><img src=\"img/" +lijst.get(i).getImg() + ".jpg\" width=\"300\" height=\"auto\" class=\"img-thumbnail\" alt=\"Responsive image\"><h2 style=\"float:right; margin-right:60px; margin-top:15%\">&euro; " + lijst.get(i).getPrijsFormat() + "</h2></div><hr>";
                modal += "<div style=\"text-align:center\"><p><h3>Specificaties</h3></p><div style=\"width:70%; display:inline-block\"><table style=\"text-align:left\" class=\"table table-condensed\"><tr><td>Cilinderinhoud</td><td>" + lijst.get(i).getCc() + "</td></tr><tr><td>Vermogen</td><td>" + lijst.get(i).getVermogen() + "</td></tr><tr><td>Gewicht</td><td>" + lijst.get(i).getGewicht() + "</td></tr><tr><td>Topsnelheid</td><td>" + lijst.get(i).getTopsnelheid() + "</td></tr><tr><td>Acceleratie</td><td>" + lijst.get(i).getAcceleratie() + "</td></tr></table></div></div></div></div></div></div>";
            }
        }
    }
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="page-header">
  <div style="margin-left:30px">
    <h1>Auto's</h1>
  </div>
</div>
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid"> 
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="#">Autolijst</a> </div>
    <form class="navbar-form navbar-right" role="search">
      <select name="merk" class="form-control">
        <option value="alles">Alle merken</option>
        <%=options%>
      </select>
      <input type="submit" class="btn btn-default" name="knop2" value="Zoek">
      <button style="margin-left: 20px" type="button" class="btn btn-default" data-toggle="collapse" data-target="#demo">Geavanceerd</button>
    </form>
  </div>
  <div id="demo" class="collapse">
      <hr><p>test</p>
    </div>
  </div>
</nav>
<div class="container-fluid">
<div class="row">
    <div class="col-md-2"><%=modal%></div>
  <div class="col-md-8"><%=divs%></div>
  <div class="col-md-2"></div>
</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> 
<script src="js/bootstrap.js"></script>
</body>
</html>