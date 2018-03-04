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
	    <div class="panel-heading"><center>Statistics</center>
	    </div>
	    <div class="panel-body">Balance : 5000frs<br>Recipients : 50<br>Cost : 1000frs
	    </div>
	  </div>
	</div>
        </div>
    </div>
    <div class="col-lg-9">
      	<div class="panel-group col-sm-12">
	  <div class="panel panel-default">
	    <div class="panel-body">




<div class="col-lg-12">
<div class="input-group col-sm-12"><label class="aria-label">Send To Single Recipient : </label>
  <input type="text" class="form-control" placeholder="Recipient's Phone Number" aria-describedby="basic-addon2">
</div><br>
</div>

<div class="col-lg-12">
<div class="input-group col-sm-12"><label>Send To Group : </label>

      <div class="input-group-btn pull-left" style="position:relative;left:150px">
        <select class="btn btn-default" aria-haspopup="true" aria-expanded="false">... <span class="caret"></span>
        <ul class="dropdown-menu">
          <option><a href="#">...</a></option>
          <option><a href="#">Group 1</a></option>
          <option><a href="#">Group 2</a></option>
          <option><a href="#">Group 3</a></option>
        </ul>
</select>
      </div><!-- /btn-group -->
</div>
</div>


	    </div>
	  
	    <div class="panel-body">



<div class="input-group col-sm-12">
  <textarea class="form-control" style="width:100%;height:400px" placeholder="Message content..." aria-describedby="basic-addon2"> </textarea>
</div>
<div class="input-group">
  <span class="input-group-addon" id="basic-addon2">SEND</span>
</div>



	   </div>
	  </div>
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
