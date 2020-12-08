<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>College Registration</title>
    
    
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>

* {box-sizing: border-box}
body {

font-family: Verdana, sans-serif; 
margin:0;
background-color: #ffc7ea;
background-image: url(../img/b1.jpg);

}

.container{
  width:70%;
  max-height: 400px !important;
}



.carousel-inner{
  width:100%;
  max-height: 600px !important;
}

</style>
    
    
</head>
<body>
<div class="form" align="center">
<form action="insertcollege" method="post" name=form>
<table>
<tr>
<td>College Name</td>
<td><input type="text" id="collegeName" name="collegeName"></td>
</tr>
<tr>
<td>Location Name</td>
<td><textarea rows="4" cols="50" id="collegeLocation" name="collegeLocation"></textarea></td>
</tr>
<tr>
<td>No of branches</td>
<td><input type="number" id=" collegeBranch" name=" collegeBranch"></td>
</tr>
<tr>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form>

 

</div>
<script type="text/javascript">
$(document).ready(function(){
    $('form').validate({
        rules:{
            
collegeName:{
    required:true,
    alphanumeric:true,
    minlength:1,
    maxlength:20
},
collegeLocation:{
    required:true,
    alphanumeric:true,
    
},
collegeBranch:{
    required:true,
    range:[1,3]
}
},
submitHandler:function(form){
    
    form.submit();
}
    });
});
        
</script>
<p align="center">
<a href="/"><button>Back to Homepage</button></a>
</p>
</body>
</html>
