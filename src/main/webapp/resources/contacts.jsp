<!doctype html>
<html><head>
    <meta charset="utf-8">
    <title>BLOCKS - Bootstrap Dashboard Theme</title>
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

  	<!-- DataTables Initialization -->
    <script type="text/javascript" src="assets/js/datatables/jquery.dataTables.js"></script>
  			<script type="text/javascript" charset="utf-8">
			$(document).ready(function() {
				$('#dt1').dataTable();
			} );
	</script>

    
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
			<h4><strong>Contacts List</strong></h4>
			  <table class="display">
	          <thead>
	            <tr>
	              <th>Contact Name</th>
	              <th>Phone Number</th>
	              <th>Email</th>
	              <th>Group</th>
	            </tr>
	          </thead>
	          <tbody>
	            <tr class="odd">
	              <td>Queen</td>
	              <td>Brian May</td>
	              <td>Guitar</td>
	              <td class="center"> 7</td>
	            </tr>
	            <tr class="even">
	              <td>Queen</td>
	              <td>Roger Taylor</td>
	              <td>Drums</td>
	              <td class="center">5</td>
	            </tr>
	            <tr class="odd">
	              <td>Beatles</td>
	              <td>Paul McCartney</td>
	              <td>Guitar &amp; Piano</td>
	              <td class="center">8</td>
	            </tr>
	            <tr class="even">
	              <td>Adele</td>
	              <td>Adele</td>
	              <td>None</td>
	              <td class="center">8</td>
	            </tr>
	            <tr class="odd">
	              <td>Britney Spears</td>
	              <td>Britney Spears</td>
	              <td>None</td>
	              <td class="center">7</td>
	            </tr>
	          </tbody>
	         </table><!--/END First Table -->
			 <br>
			 <!--SECOND Table -->
		</div><!--/span12 -->
		
			<div class="col-sm-4">
				<div class="dash-unit">
	      		<dtitle>New Contact</dtitle>
	      		<hr>
	      		<div class="cont">
                	<form action="#get-in-touch" method="POST" id="contact">
                    	<input type="text" id="contactname" name="contactname" placeholder="Name">
                    	<input type="text" id="email" name="email" placeholder="Email">
                    	<input type="text" id="email" name="email" placeholder="Phone Number">
                    	<div class="form-group">
						 <select class="form-control" id="sel1">
						    <option>Select Group</option>
						    <option>2</option>
						    <option>3</option>
						    <option>4</option>
						  </select>
						</div>
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

  
</body></html>
