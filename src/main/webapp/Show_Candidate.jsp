<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EQUIFAX RESOURCE PLANNER</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
</head>
<body>

<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/Home" class="navbar-brand">Equifax Home</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Admin Login</a></li>
					
					
					<c:choose>
					<c:when test="${mode=='Login_Success'}">
					<li><a href="/register">New Candidate Registration</a></li>
					</c:when>
					</c:choose>
					<li><a href="/show-users">All Candidates</a></li>
					<c:choose>
					<c:when test="${mode=='Login_Success' }">
					<li><a href="/modify">Modify Candidate Info</a></li>
					</c:when>
					<c:when test="${mode=='MODE_HOME' }">
					<li><a href="/modify">Modify Candidate Info</a></li>
					</c:when>
					<c:when test="${mode=='MODE_HOME'}">
					<li><a href="/register">New Candidate Registration</a></li>
					</c:when>
					</c:choose>
					
					
					
				</ul>
			</div>
		</div>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	<c:choose>
	<c:when test="${mode=='update' }">
	<div class="container text-center" id="tasksDiv">
				<h3>All Candidates</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Candidate ID</th>
								<th>Swon Number</th>
								<th>IT Manager</th>
								<th>Team</th>
								<th>Current Location</th>
								<th>OTL Start Date</th>
								<th>OTL End Date</th>
								<th>Status</th>
								<th>OTL Project Number</th>
								<th>OTL Task</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="can" items="${candidate}">
								<tr>
									
									<td>${can.id}</td>
									<td>${can.swon_number}</td>
									<td>${can.it_manager}</td>
									<td>${can.team}</td>
									<td>${can.current_location}</td>
									<td>${can.otl_start_date}</td>
									<td>${can.otl_end_date}</td>
									<td>${can.status}</td>
									<td>${can.otl_project_number}</td>
									<td>${can.otl_task}</td>	
									<td><a href="/delete-user?id=${can.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/get_id?id=${can.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
									
								</tr>
							</c:forEach>
						</tbody>
						
					</table>
				</div>
			</div>
	</c:when>
	
	
	
	<c:when test="${mode=='Show_candidate_details' }">
			<div class="container text-center">
				<h3>Details Modification</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/save-modified-user">
					<div class="form-group">
						<label class="control-label col-md-3">Candidate ID</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="id"
								value="${candidate.id }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Swon Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="swon_number"
								value="${candidate.swon_number }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">IT Manager</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="it_manager"
								value="${candidate.it_manager }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Team</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="team"
								value="${candidate.team }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Current Location</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="current_location"
								value="${candidate.current_location }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">OTL Start Date</label>
						<div class="col-md-7">
							<input type="date" class="form-control" name="otl_start_date"
								value="${candidate.otl_start_date }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">OTL End Date</label>
						<div class="col-md-7">
							<input type="date" class="form-control" name="otl_end_date"
								value="${candidate.otl_end_date }" />
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="control-label col-md-3">Status</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="status"
								value="${candidate.status }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">OTL Project Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="otl_project_number"
								value="${candidate.otl_project_number }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">OTL Task Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="otl_task"
								value="${candidate.otl_task }" />
						</div>
					</div>
					
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Save" />
					</div>
				</form>
			</div>
		</c:when>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<c:when test="${mode=='Login_Success' }">
	<h2><center>Logged in as SYSADMIN</center></h2></c:when></c:choose>
	
	<c:choose>
	
	
	<c:when test="${mode=='MODE_LOGIN' }">
			<div class="container text-center">
				<h3>Admin Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-user">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${user.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${user.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
					</form>
					</div>
					</c:when>
					
					
					
					
					
					
					
					
	
	
	
	
	<c:when test="${mode=='ALL_USERS' }">
	<div class="container text-center" id="tasksDiv">
				<h3>All Candidates</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Candidate ID</th>
								<th>Swon Number</th>
								<th>IT Manager</th>
								<th>Team</th>
								<th>Current Location</th>
								<th>OTL Start Date</th>
								<th>OTL End Date</th>
								<th>Status</th>
								<th>OTL Project Number</th>
								<th>OTL Task</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="can" items="${candidate}">
								<tr>
									
									<td>${can.id}</td>
									<td>${can.swon_number}</td>
									<td>${can.it_manager}</td>
									<td>${can.team}</td>
									<td>${can.current_location}</td>
									<td>${can.otl_start_date}</td>
									<td>${can.otl_end_date}</td>
									<td>${can.status}</td>
									<td>${can.otl_project_number}</td>
									<td>${can.otl_task}</td>	
									
								</tr>
							</c:forEach>
						</tbody>
						
					</table>
				</div>
			</div>
			</c:when>
			
		<c:when test="${mode=='MODE_HOME' }">
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h2>Details of Candidate ID: ${candidate.id} are registered Successfully</h2>
				</div>
			</div>

		</c:when>
			
			
			
			<c:when test="${mode=='MODE_REGISTER' }">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-user">
					<div class="form-group">
						<label class="control-label col-md-3">Candidate ID</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="id"
								value="${Candidate.id }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Swon Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="swon_number"
								value="${Candidate.swon_number }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">IT Manager</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="it_manager"
								value="${Candidate.it_manager }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Team</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="team"
								value="${Candidate.team }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Current Location</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="current_location"
								value="${Candidate.current_location }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">OTL Start Date</label>
						<div class="col-md-7">
							<input type="date" class="form-control" name="otl_start_date"
								value="${Candidate.otl_start_date }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">OTL End Date</label>
						<div class="col-md-7">
							<input type="date" class="form-control" name="otl_end_date"
								value="${Candidate.otl_end_date }" />
						</div>
					</div>
					
					
					<div class="form-group">
						<label class="control-label col-md-3">Status</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="status"
								value="${Candidate.status }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">OTL Project Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="otl_project_number"
								value="${Candidate.otl_project_number }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">OTL Task Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="otl_task"
								value="${Candidate.otl_task }" />
						</div>
					</div>
					
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
		</c:when>
			
			</c:choose>
			
			
			<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	
	

</body>
</html>