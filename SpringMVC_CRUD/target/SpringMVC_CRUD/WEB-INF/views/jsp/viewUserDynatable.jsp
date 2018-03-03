<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Dynatable/0.3.1/jquery.dynatable.js"></script>    
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/Dynatable/0.3.1/jquery.dynatable.css">
    
        <script>
            $(document).ready(function() {
               
                $.ajax({
                type : "GET",
                url : "./viewUsers.do",
                timeout : 100000,
                cache    : false,
                data : {
//                                 userName : $("#userName").val() , password : $("#password").val()
                             },
                beforeSend: function(){ 
//                    $("#password").css("border","");
//                    $("#passErrMsg").html(''); 
//                    
//                    $("#loading").css("color","green");
//                    $("#loading").html('loading...');
                },
                complete: function(){

                },
                success : function(data) {
                    // var html = '<option value="">Select</option>';
                   // html = '';
                     //alert(data);
                    // alert($("#password").val());
                         alert(data);
                         //var obj = jQuery.parseJSON(data);
                         console.log(data);
                         var jsonData = '[{"lastName":"ddssd","firstName":"dsdss","password":"ssdsd","id":1,"userName":"sdsd","age":1,"email":"dssd","status":1},{"lastName":"adad","firstName":"dada","password":"asdad","id":2,"userName":"sasd","age":11,"email":"adada","status":1},{"lastName":"sfs","firstName":"sdfsdf","password":"sdfsf","id":3,"userName":"sfsfs","age":22,"email":"ssf@gmail.com","status":1},{"lastName":"ddsf","firstName":"ddf","password":"dfgdf","id":4,"userName":"SYS","age":33,"email":"dada.sourav.inbox.fb@gmail.com","status":0},{"lastName":"","firstName":"Md Mamun","password":"Allahvorosa786","id":5,"userName":"SYS","age":90,"email":"souravcuet11@gmail.com","status":0},{"lastName":"sdfsdf","firstName":"Md Mamun","password":"Allahvorosa786","id":6,"userName":"SYS","age":90,"email":"souravcuet11@gmail.com","status":0},{"lastName":"sdfsdf","firstName":"Md Mamun","password":"Allahvorosa786","id":7,"userName":"SYS","age":90,"email":"souravcuet11@gmail.com","status":0},{"lastName":"Abdul Kayum","firstName":"Md Mamun","password":"Allahvorosa786","id":8,"userName":"SYS","age":9,"email":"souravcuet11@gmail.com","status":0},{"lastName":"dfd","firstName":"f","password":"sds","id":9,"userName":"SYS","age":44,"email":"inbox.coder@gmail.com","status":1},{"lastName":"dfd","firstName":"f","password":"sds","id":10,"userName":"SYS","age":44,"email":"inbox.coder@gmail.com","status":1},{"lastName":"dfd","firstName":"f","password":"sds","id":11,"userName":"SYS","age":44,"email":"inbox.coder@gmail.com","status":1},{"lastName":"dfd","firstName":"f","password":"sds","id":12,"userName":"SYS","age":44,"email":"inbox.coder@gmail.com","status":1},{"lastName":"dfd","firstName":"f","password":"sds","id":13,"userName":"SYS","age":44,"email":"inbox.coder@gmail.com","status":1},{"lastName":"dfd","firstName":"f","password":"sds","id":14,"userName":"SYS","age":44,"email":"inbox.coder@gmail.com","status":1},{"lastName":"dfd","firstName":"f","password":"sds","id":15,"userName":"SYS","age":44,"email":"inbox.coder@gmail.com","status":1},{"lastName":"sds","firstName":"dd","password":"sfs","id":16,"userName":"fsdf","age":33,"email":"dsfd","status":0},{"lastName":"sds","firstName":"dd","password":"sfs","id":17,"userName":"fsdf","age":33,"email":"dsfd","status":0},{"lastName":"sds","firstName":"dd","password":"sfs","id":18,"userName":"fsdf","age":33,"email":"dsfd","status":0},{"lastName":"sds","firstName":"dd","password":"sfs","id":19,"userName":"fsdf","age":33,"email":"dsfd","status":0},{"lastName":"sds","firstName":"dd","password":"sfs","id":20,"userName":"fsdf","age":33,"email":"dsfd","status":0},{"lastName":"ds","firstName":"ffss","password":"sds","id":21,"userName":"sdsd","age":33,"email":"cx","status":0},{"lastName":"ds","firstName":"ffss","password":"sds","id":22,"userName":"sdsd","age":33,"email":"cx","status":0},{"lastName":"sdfsd","firstName":"sdcsc","password":"sfdsd","id":23,"userName":"sfsd","age":33,"email":"sdfs","status":0},{"lastName":"sdfsd","firstName":"sdcsc","password":"sfdsd","id":24,"userName":"sfsd","age":33,"email":"sdfs","status":0},{"lastName":"sfs","firstName":"dsad","password":"sdfs","id":25,"userName":"sfs","age":3,"email":"sdfdsf","status":0},{"lastName":"sfs","firstName":"dsad","password":"sdfs","id":26,"userName":"sfs","age":3,"email":"sdfdsf","status":0},{"lastName":"fdsf","firstName":"sf","password":"sfs","id":27,"userName":"sf","age":3,"email":"sfs","status":0},{"lastName":"fdsf","firstName":"sf","password":"sfs","id":28,"userName":"sf","age":3,"email":"sfs","status":0},{"lastName":"fs","firstName":"sfc","password":"d","id":29,"userName":"d","age":4,"email":"sdd","status":0},{"lastName":"fs","firstName":"sfc","password":"d","id":30,"userName":"d","age":4,"email":"sdd","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":31,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":32,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":33,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":34,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":35,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":36,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":37,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":38,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":39,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":40,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":41,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":42,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":43,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":44,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":45,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":46,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":47,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":48,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":49,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":50,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":51,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":52,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":53,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":54,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":55,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":56,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":57,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":58,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":59,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"ds","firstName":"dsad","password":"sdf","id":60,"userName":"dsfds","age":3,"email":"sdd","status":2},{"lastName":"sfs","firstName":"cfs","password":"sf","id":61,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":62,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":63,"userName":"sfs","age":2,"email":"sfs","status":0},{"lastName":"sfs","firstName":"cfs","password":"sf","id":64,"userName":"sfs","age":2,"email":"sfs","status":0}]';
                         var response = JSON.parse(data);
                         console.log(response);
                           $('#tableIdToFill').dynatable({

                                dataset: {
                                       records: response 
                                }
                          });
                    
                   // var userContext = obj.users;
                    //alert(userContext);
                    // alert(userContext);
                   // var len = userContext.length;
//                    for ( var i = 0; i < len; i++) {
//                        html += '<option value="' + userContext[i] + '">'
//                                        + userContext[i] + '</option>';
//                    }
//                    $('#securityContext').html(html);
//                    $("#loading").html('');
                },
                error : function(e) {
                    alert("userContext");
                    console.log("ERROR: ", e);
//                    $("#password").css("border","1px solid #f00"); 
//                    $("#passErrMsg").html('Invalid password!');
//                      
//                    $("#loading").css("color","red");
//                    $("#loading").html('Cannot load security context');
//                    $('#securityContext').html('');
                                        
                },
                done : function(e) {
                 //alert("DONE");
                 //enableSearchButton(true);
                }
                });

             
         });
           
        </script>
        
    </head>
    <body id="htmlDataTable"></body>  
    <table id="tableIdToFill" class="display" cellspacing="0" width="98%">
    <thead>
    <tr>
        <th>lastName</th>
        <th>firstName</th>
        <th>password</th>
        <th>id</th>
        <th>userName</th>
        <th>age</th>
        <th>email</th>
        <th>status</th>
    </tr>
    </thead>
    <tfoot>
    <tr>
        <th>lastName</th>
        <th>firstName</th>
        <th>password</th>
        <th>id</th>
        <th>userName</th>
        <th>age</th>
        <th>email</th>
        <th>status</th>
    </tr>
    </tfoot>
    </table>
 </body>
</html>
