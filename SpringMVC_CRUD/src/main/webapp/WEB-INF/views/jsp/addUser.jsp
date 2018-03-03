<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>User Management System</title>
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <style>
        .meniItem {
        color: white;
        }
        </style>
	</head>
	<body>
        <nav style="background: teal;" class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#"><h4 class="meniItem">NoteArena Property</h4></a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="<c:url value="/dashboard.do" />"><h4 class="meniItem">Dashboard</h4></a></li>
                    <li class="active"><a href="<c:url value="/addUser.do" />"><h4 class="meniItem">Add User</h4></a></li>
                    <li><a href="<c:url value="/viewUser.do" />"><h4 class="meniItem">Show User</h4></a></li>
                </ul>
            </div>
        </nav>
		<div style="width: 700px; margin: auto;">
			<h3 align="center"><b>Add a new user</b></h3>
			<form:form class="form-horizontal" role="form" action="viewUser.do" modelAttribute="userObject">
		    <div class="col-sm-6">
					<div class="form-group">
						<label class="control-label col-sm-4" for="firstName">First Name :</label>
						<div class="col-sm-8"> 
							<form:input path="firstName" type="text" class="form-control"  placeholder="First Name"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4" for="lastName">Last Name:</label>
						<div class="col-sm-8"> 
							<form:input path="lastName" type="text" class="form-control"  placeholder="Last Name"/>
						</div>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label class="control-label col-sm-4" for="age">Age :</label>
						<div class="col-sm-8"> 
							<form:input path="age" type="number" class="form-control"  placeholder="Age"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4" for="email">Email :</label>
						<div class="col-sm-8"> 
							<form:input path="email" type="text" class="form-control"  placeholder="Email"/>
						</div>
					</div>
				</div>
	    
					<div class="form-group">
						<label class="control-label col-sm-4" for="userName">User Name :</label>
						<div class="col-sm-8"> 
							<form:input path="userName" type="text" class="form-control"  placeholder="User Name"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-4" for="password">Password :</label>
						<div class="col-sm-8"> 
							<form:input path="password" type="text" class="form-control"  placeholder="Password"/>
						</div>
					</div>
				
				<div class="form-group">
						<label class="control-label col-sm-4" for="status">Status :</label>
						<div class="col-sm-8"> 
							<form:input path="status" type="number" class="form-control"  placeholder="Status"/>
						</div>
					</div>
				<div class="form-group"> 
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-default">Submit</button>
					</div>
				</div>
			</form:form>
		</div>

	</body>
</html>