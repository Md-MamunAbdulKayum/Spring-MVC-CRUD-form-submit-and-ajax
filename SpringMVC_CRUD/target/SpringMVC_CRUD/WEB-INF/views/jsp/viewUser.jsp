<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="resources/css/appStyle.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/ui-darkness/jquery-ui.css" rel="stylesheet">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>

        <script src="resources/js/appJs.js"></script>
          
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
                    <li><a href="<c:url value="/addUser.do" />"><h4 class="meniItem">Add User</h4></a></li>
                    <li class="active"><a href="<c:url value="/viewUser.do" />"><h4 class="meniItem">Show User</h4></a></li>
                </ul>
            </div>
        </nav>
        <div id="divContainer">

            <h4>User Table</h4>
            <!-- TABLE HEADER-->
            <table id="records_table" class="tableData" border='1'>
                <thead>
                    <tr><td style="background: darkcyan" colspan=7>
                            <button class="btn" id="buttonAddNew" >New</button>
                            <button class="btn" id="buttonEdit" >Edit</button>
                            <button class="btn" onclick="deleteRow()">Delete</button>
                        </td></tr>
                    <tr>
                        <th>Id</th><th>First Name</th><th>Last Name</th><th>Age</th><th>User Name</th><th>Email</th><th>Status</th>
                    </tr>
                </thead>
                <tbody id="tdataDis">

                </tbody>
            </table>
        </div>

        <div style="" id="dialogAddUser" title="Add a new user">
            <div class="col-sm-6">
                <div class="form-group">
                    <label class="control-label col-sm-4" for="firstName">First Name :</label>
                    <div class="col-sm-8"> 
                        <input id="firstName" type="text" class="form-control" value=""  placeholder="First Name"/>
                    </div>
                </div><br/>
                <div class="form-group">
                    <label class="control-label col-sm-4" for="lastName">Last Name:</label>
                    <div class="col-sm-8"> 
                        <input id="lastName" type="text" class="form-control" value=""   placeholder="Last Name"/>
                    </div>
                </div><br/>
                <div class="form-group">
                    <label class="control-label col-sm-4" for="age">Age :</label>
                    <div class="col-sm-8"> 
                        <input id="age" type="number" class="form-control" value=""  placeholder="Age"/>
                    </div>
                </div><br/>
            </div>
            <div class="col-sm-6">

                <div class="form-group">
                    <label class="control-label col-sm-4" for="email">Email :</label>
                    <div class="col-sm-8"> 
                        <input id="email" type="text" class="form-control" value=""  placeholder="Email"/>
                    </div>
                </div><br/>
                <div class="form-group">
                    <label class="control-label col-sm-4" for="userName">User Name :</label>
                    <div class="col-sm-8"> 
                        <input id="userName" type="text" class="form-control" value=""  placeholder="User Name"/>
                    </div>
                </div><br/>
                <div class="form-group">
                    <label class="control-label col-sm-4" for="password">Password :</label>
                    <div class="col-sm-8"> 
                        <input id="password" type="password" class="form-control" value=""  placeholder="Password"/>
                    </div>
                </div> <br/>
            </div>
            <div class="col-sm-6">


                <div class="form-group">
                    <label class="control-label col-sm-4" for="status">Status :</label>
                    <div class="col-sm-8"> 
                        <input id="status" type="number" class="form-control" value=""  placeholder="Status"/>
                    </div>
                </div> <br/>
            </div> <br/>

            <div class="col-sm-offset-8 col-sm-4">
                <input class="btn" id="submit" type="button" value="Create">
            </div>

        </div>       

    </body>
</body>
</html>
