<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.util.*,java.io.*,java.util.TreeMap" %>  
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="vendors/linericon/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
	<link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
	<link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
	<link rel="stylesheet" href="vendors/animate-css/animate.css">
	<link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css">
	<!-- main css -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script>

window.onload = function () {

var options = {
	animationEnabled: true,
	title: {
		text: "<%=session.getAttribute("name")%>"
	},
	axisY: {
		title: "<%=session.getAttribute("name")%>",
		suffix: "%",
		includeZero: false
	},
	axisX: {
		title: "<%=session.getAttribute("name")%>"
	},
	data: [{
		type: "column",
		yValueFormatString: "#,##0.0#"%"",
		dataPoints: [
			{ label: "Precision", y: <%=session.getAttribute("Precision")%> },	
			{ label: "Recall", y: <%=session.getAttribute("Recall")%> },
			{ label: "f1", y:<%=session.getAttribute("f1")%>},
			{ label: "FPR", y: <%=session.getAttribute("FPR")%> },
			{ label: "accuracy", y: <%=session.getAttribute("accuracy")%> }
			
		]
	}]
};


$("#showChart").click(function() {
	
	$("#dialogBox").dialog({
		open: function(event,ui) {
			$(".ui-widget-overlay").bind("click", function(event,ui) {         
				$("#dialogBox").dialog("close");
			});
		},
		closeOnEscape: true,
		draggable: false,
		resizable: false,
		title: "<%=session.getAttribute("name")%>",
		width: 1000,
		modal: true,
		show: 500
	});
	$(".ui-widget-overlay").css({"background-color": "#111111"});
	$("#chartContainer").CanvasJSChart(options);
});

}
</script>
	<style>
	#showChart{
		background-color: #5bb85b;
		color: #ffffff;
		padding: 10px;
		border: 0px;
		border-radius: 8px;
		font-size: 18px;
		outline: none;
		cursor: pointer;
    } 
  	#container{
		position: fixed;
		top: 50%;
		width:100%;
		text-align: center;
		margin-top: -41px;
  	}
</style>
</head>

<body>

	<header class="header_area">
		<div class="container">
		<h1>Spammer Detection and Fake User Identification
on Social Networks</h1>
		</div>
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light" style="
    background-color: #4cd3e3;
">
				<div class="container">
					
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<div class="row ml-0 w-100">
							<div class="col-lg-12">
								<ul class="nav navbar-nav center_nav ">
									<li class="nav-item active">
										<a class="nav-link" href="index.jsp">Home</a>
									</li>
									<li class="nav-item ">
										<a class="nav-link" href="view.jsp">view data</a>
									</li>
									<li class="nav-item ">
										<a class="nav-link" href="preprocessing.jsp">pre processing</a>
									</li>
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">decision tree</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="decision_tree_algorithm.jsp">Training data</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="decision_tree_test.jsp">Test data</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="decision_tree_pd.jsp">decision tree</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="graph.jsp">graph</a>
											</li>
										</ul>
									</li>
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">SVM</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="svm.jsp">Training data</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="svm_test.jsp">Test data</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="svm_pd.jsp">svm </a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="graph.jsp">graph</a>
											</li>
										</ul>
									</li>
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Naive bayes</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="Naivebayes.jsp">Training data</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="Naivebayes_test.jsp">Test data</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="Naivebayes_pd.jsp">Naive bayes</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="graph.jsp">graph</a>
											</li>
										</ul>
									</li>
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">random forest</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="random_forest.jsp">Training data</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="random_forest_test.jsp">Test data</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="random_forest_pd.jsp">random forest</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="graph.jsp">graph</a>
											</li>
										</ul>
									</li>
								<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">K Nearest Neighbour</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="K_nearest_Neighbour_test.jsp">Test data</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="K_nearest_Neighbour_pd.jsp">K nearest Neighbour</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="graph.jsp">graph</a>
											</li>
										</ul>
									</li>
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">bayes Network</a>
										<ul class="dropdown-menu">
											<li class="nav-item">
												<a class="nav-link" href="bayesNetwork_algorithm.jsp">Training data</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="bayesNetwork_test.jsp">Test data</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="bayesNetwork_pd.jsp">bayes Network</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="graph.jsp">graph</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>
	
	
	
	<!--================ Start Offered Services Area =================-->
	<section class="service_area section_gap">
		<div class="container">
			<div class="row justify-content-center section-title-wrap">
				<div class="col-lg-12">
				 <div id="container">
	<button id="showChart">Click to Show Chart in a Pop-up</button>
</div>
<div id="dialogBox" style="display: none;">
	<div id="chartContainer" class="dialog" style="height: 250px; width: 100%;"></div>
</div>
					</div>
			</div>

			
			</div>
		</div>
	</section>
	<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>