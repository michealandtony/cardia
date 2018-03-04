<!doctype html>
<html><head>
    <meta charset="utf-8">
    <title>Cardia - Contact Groups</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="/resources/css/bootstrap.css" rel="stylesheet">
    <link href="/resources/css/main.css" rel="stylesheet">
    <!-- DATA TABLE CSS -->
    <link href="/resources/css/table.css" rel="stylesheet">



    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

    <style type="text/css">
      body {
        padding-top: 60px;
      }
    </style>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    
  </head>
  <body>
  
  	<!-- NAVIGATION MENU -->

    <div class="navbar-nav navbar-inverse navbar-fixed-top">
        <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand"><img src="/resources/img/logo30.png" alt=""> Cardia</a>
        </div> 
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li><a href="/groups"><i class="icon-folder-open icon-white"></i> Groups</a></li>
              <li><a href="/contacts"><i class="icon-home icon-white"></i> Contacts</a></li>
              <li><a href="/compose"><i class="icon-calendar icon-white"></i> Compose</a></li>

            </ul>
          </div><!--/.nav-collapse -->
        </div>
    </div>

    <div class="container">

      <!-- CONTENT -->
	<div class="row">
		<div class="col-sm-8">
			<h4><strong>Contact Groups</strong></h4>
			  <table class="display">
	          <thead>
	            <tr>
	              <th>Group Name</th>
	              <th>Description</th>
	            </tr>
	          </thead>
	          <tbody id="contact-group">
	          </tbody>
	         </table><!--/END First Table -->
			 <br>
			 <!--SECOND Table -->
		</div><!--/span12 -->
		
			<div class="col-sm-4">
				<div class="dash-unit">
	      		<dtitle>New Group</dtitle>
	      		<hr>
	      		<div class="cont">
                	<form action="/groups?${_csrf.parameterName}=${_csrf.token}" method="POST" >
                    	<input type="text" name="name" placeholder="Name">
                    	<input type="text" name="description" placeholder="Group Description">
						<input type="submit" id="submit" name="submit" value="Submit">
                    </form>
				</div>
				</div>
			</div>
      </div><!-- /row -->
     </div> <!-- /container -->
    


    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="assets/js/admin.js"></script>


<script >
    
    function getGroups() {
    	console.log ("getting groups...");
        var xmlhttp = new XMLHttpRequest();
        var url = "http://localhost:8080/api/groups";
        xmlhttp.open('GET',url,true);
        xmlhttp.send(null);
        
        xmlhttp.onreadystatechange = function() {
               if (xmlhttp.readyState == 4) {
                  if ( xmlhttp.status == 200) {
                       var response = eval( "(" +  xmlhttp.responseText + ")");
                       var table = "";
                       var state = 1;
                       for (var index in response){
                    	   table += "<tr ";
                    	   if (state == 1){
                    		   table += "class=\"odd\"";
                    		   state = 0;
                    	   }
                    	   else {
                    		   table += "class=\"even\"";
                    		   state = 1;
                    	   }
                    	   
                    	   table += ">"+
                    	   "<td>"+response[index].name+"</td>"+
                    	   "<td>"+response[index].description+"</td>"+
                    	   "</tr>";
                    	   
                    	    document.getElementById("contact-group").innerHTML = table;
                       }
                 }
                 else
                       alert("Error ->" + xmlhttp.responseText);
              }
        };
    }
    
    getGroups();
  </script>
  
</body></html>
