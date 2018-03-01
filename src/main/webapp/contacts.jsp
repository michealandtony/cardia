<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Yak BMS</title>

    <!-- Bootstrap -->
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    
<div class="">
  <nav class="navbar navbar-inverse navbar-static-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar3">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand"><big><b>Cardia</b></big></a>
      </div>
      <div id="navbar3" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-left">
          <li><a href="/home">Home</a></li>
          <li><a href="/contacts">Contacts</a></li>
          <li><a href="/compose">Compose</a></li>
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
    <!--/.container-fluid -->
  </nav>
</div>

<style>
.src-image {
  display: none;
}

.card {
  overflow: hidden;
  position: relative;
  border: 1px solid #CCC;
  border-radius: 8px;
  text-align: center;
  padding: 0;
  background-color: #284c79;
  color: rgb(136, 172, 217);
}

.card .header-bg {
  /* This stretches the canvas across the entire hero unit */
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 70px;
  border-bottom: 1px #FFF solid;
  /* This positions the canvas under the text */
  z-index: 1;
}
.card .avatar {
  position: relative;
  margin-top: 15px;
  z-index: 100;
}

.card .avatar img {
  width: 100px;
  height: 100px;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  border: 5px solid rgba(0,0,30,0.8);
}
</style>

        
<script>
	function showList(){
		console.log ("showing...");
	}
</script>



<div class="container">
  <div class="row">
    <div class="col-sm">
      <div class="col-lg-3">
            <div class="card">
                <canvas class="header-bg" width="250" height="70" id="header-blur"></canvas>
                <div class="avatar">
                    <img src="img/1.jpg" alt="" />
                </div>
                <div class="content">
                    <p>Web Developer <br>
                       More description here</p>
                    <p><button type="button" class="btn btn-default">Contact</button></p>
                </div>
            </div>
	<div class="panel-group col-sm-12" style="padding-top:50px">
	  <div class="panel panel-default">
	    <div class="panel-heading"><center>New Contact</center>
	    </div>
	    <div class="panel-body">
			<form action="/contacts?${_csrf.parameterName}=${_csrf.token}" method="post">
				<div class="input-group col-sm-12"><label class="aria-label">Name </label>
				  <input type="text" class="form-control" name="name" placeholder="" aria-describedby="basic-addon2">
				</div>
				<div class="input-group col-sm-12"><label class="aria-label">Email </label>
				  <input type="text" class="form-control" name="email" placeholder="" aria-describedby="basic-addon2">
				</div>
				<div class="input-group col-sm-12"><label class="aria-label">Phone Number </label>
				  <input type="text" class="form-control" name="phoneNumber" placeholder="" aria-describedby="basic-addon2">
				</div>
				<div class="input-group col-sm-12"><label class="aria-label">Group<br> </label>
				</div>
				<div class="input-group col-sm-12">
					<select name="groupName" id="create-contact-group-select" class="btn btn-primary" style="position:relative;left:30px">
					</select>
				</div>
				<div class="input-group col-sm-12" style="padding-top:20px">
				  <input type="submit" class="btn btn-primary" value="Save contact" />
				</div>
			</form>
	    </div>
	  </div>
	</div>
        </div>
    </div>
    <div class="col-lg-7">
      	<div class="panel-group col-sm-12">
	  <div class="panel panel-default">
	    <div class="panel-body" style="min-height:460px">


<div class="panel panel-default">
	    <div class="panel-heading"><center>Contact List</center>
	    </div>
	    <div class="panel-body">
			<div class="input-group col-sm-12"><label class="aria-label">Contact group </label>
				<select id="group-select" class="btn btn-primary" style="position:relative;left:30px">
				</select>
			</div>
	    </div>
	  </div>

		<div class="col-sm-12" style="padding-top:30px">
            <section class="panel">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Contact Name</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                  </tr>
                </thead>
                <tbody id="contacts-table">
                </tbody>
              </table>
            </section>
          </div>


	    </div>
	  
	    <div class="panel-body">
	   	</div>
	  </div>
	</div>
    </div>
<div class="col-lg-2">




<div class="panel panel-default">
	    <div class="panel-heading"><center>New group</center>
	    </div>
	    <div class="panel-body">
			<form action="/groups?${_csrf.parameterName}=${_csrf.token}" method="post">
				<div class="input-group col-sm-12"><label class="aria-label">Name </label>
				  <input type="text" name="name" class="form-control" placeholder="" aria-describedby="basic-addon2">
				  <input type="hidden" name="description" value="new group" />
				</div>
				<div class="input-group col-sm-12" style="padding-top:20px">
				  <input type="submit" class="btn btn-primary" value="Create group" />
				</div>
			</form>





</div>
  </div>



<div class="panel panel-default">
	    <div class="panel-heading"><center>Delete group</center>
	    </div>
	    <div class="panel-body">


<div class="input-group col-sm-12" style="padding-top:20px">
  <select class="btn btn-default">Create group
   <option>group x</option>
  </select>
</div>
<div class="input-group col-sm-12" style="padding-top:20px">
  <span class="btn btn-primary">Delete</span>
</div>





</div>
  </div>
</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>


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
                       for (var index in response){
                    	   var name = response[index].name;
                    	   document.getElementById("group-select").innerHTML += "<option onclick=\"showList(\""+name+"\")\" value=\""+name+"\">"+name+"</option>";
                	   	   document.getElementById("create-contact-group-select").innerHTML += "<option value=\""+name+"\">"+name+"</option>";
                       }
                 }
                 else
                       alert("Error ->" + xmlhttp.responseText);
              }
        };
    }
    
    getGroups();
  </script>
  
   <script >
    var xmlhttp = new XMLHttpRequest();
    
    function getdetails() {
        var url = "http://localhost:8080/api/contacts";
        xmlhttp.open('GET',url,true);
        xmlhttp.send(null);
        
        xmlhttp.onreadystatechange = function() {
               if (xmlhttp.readyState == 4) {
                  if ( xmlhttp.status == 200) {
                       var response = eval( "(" +  xmlhttp.responseText + ")");
                       for (var index in response){
                    	   document.getElementById("contacts-table").innerHTML += "<tr>"+
                    	   "<td>"+response[index].id+"</td>"+
                    	   "<td>"+response[index].name+"</td><td>"+response[index].phoneNumber+"</td>"+
                    	   "<td>"+response[index].email+"</td></tr>\n";
                       }
                 }
                 else
                       alert("Error ->" + xmlhttp.responseText);
              }
        };
    }
    
    getdetails();
  </script>
