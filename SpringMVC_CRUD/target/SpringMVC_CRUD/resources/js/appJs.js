/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var id = 0;
var firstName = "";
var lastName = "";
var age = 0;
var email = "";
var userName = "";
var password = "";

var actioCreate = false;
var actioEdit = false;

$(document).ready(function () {

    $(function () {
        $("#dialogAddUser").dialog({
            autoOpen: false,
            maxWidth: 850,
            maxHeight: 500,
            width: 850,
            height: 400,
            buttons: {
                Cancel: function () {
                    $(this).dialog("close");
                }
            }
        });

        $("#buttonAddNew").on("click", function () {
            actioCreate = true;
            actioEdit = false;
            $('#firstName').val("");
            $('#lastName').val("");
            $('#age').val(0);
            $('#email').val("");
            $('#userName').val("");
            $('#status').val(0);
            
            $("#dialogAddUser").dialog("open");
            $("#dialogAddUser").dialog('title', 'Add a new user');
        });

        $("#buttonEdit").on("click", function () {
            if (id !== 0 && firstName !== "") {
                actioCreate = false;
                actioEdit = true;

                $('#firstName').val(firstName);
                $('#lastName').val(lastName);
                $('#age').val(age);
                $('#email').val(email);
                $('#userName').val(userName);
                $('#status').val(status);
                
                $("#dialogAddUser").dialog({title: "Edit: "+firstName+" "+lastName}).dialog('open'); 
               // $("#dialogAddUser").dialog('title');
            } else {
                alert("Please select an user you want to edit!");
            }
        }); 

    });

    $("#submit").click(function (e) {
        if (actioCreate) {
            createUser();
        } else if (actioEdit) {
            updateUser();
        }


    });
    setUserPanel();
});

function setUserPanel() {
    $.ajax({
        type: "GET",
        url: "./viewUsers.do",
        timeout: 100000,
        cache: false,
        data: {
//                                 userName : $("#userName").val() , password : $("#password").val()
        },
        beforeSend: function () {
            document.getElementById("tdataDis").innerHTML = ""; // innerHTML is right for a div
            //alert("delete");
        },
        complete: function () {
        },
        success: function (data) {
            var response = JSON.parse(data);
            $(function () {
                $.each(response, function (i, item) {
                    $('<tr>').append(
                            $('<td class="i">').text(item.id),
                            $('<td class="f">').text(item.firstName),
                            $('<td class="l">').text(item.lastName),
                            $('<td class="a">').text(item.age),
                            $('<td class="u">').text(item.userName),
                            $('<td class="e">').text(item.email),
                            $('<td class="s">').text(item.status)).appendTo('#tdataDis');
                });
            });
            $("tbody tr").click(function () {
                $('.selected').removeClass('selected');
                $(this).addClass("selected");
                id = $('.i', this).html();
                firstName = $('.f', this).html();
                lastName = $('.l', this).html();
                age = $('.a', this).html();
                email = $('.e', this).html();
                userName = $('.u', this).html();
                status = $('.s', this).html();
            });
        },
        error: function (e) {
            alert("userContext");
            console.log("ERROR: ", e);

        },
        done: function (e) {
        }
    });
} 

function deleteRow() {
    console.log("id: " + id);
    if (id!==0) { // some condition to check whether user selected an row or not
        $.ajax({
            type: "GET",
            url: "./deleteUser.do",
            timeout: 100000,
            cache: false,
            async: false,
            data: {
                userId: id
            },
            beforeSend: function () {

            },
            complete: function () {
                setUserPanel();
            },
            success: function (data) {

                console.log(data);
                if (data === "success") {

                    alert("Successfully deleted");

                } else {
                    alert("Failed to delete");
                }

            },
            error: function (e) {
                alert("Error:: failed to delete!!");
                console.log("ERROR: ", e);
            },
            done: function (e) {

            }
        });
    } else {
        alert("Please select an user you want to delete!");
    }

}


function createUser() {
    $.ajax({
        type: "POST",
        url: "./addUserAjax.do",
        timeout: 100000,
        cache: false,
        data: {
            firstName: $("#firstName").val(),
            lastName: $("#lastName").val(),
            age: $("#age").val(),
            email: $("#email").val(),
            userName: $("#userName").val(),
            password: $("#password").val(),
            status: $("#status").val()
        },
        beforeSend: function () {

        },
        complete: function () {

        },
        success: function (data) {

            console.log(data);
            if (data === "success") {
                $("#dialogAddUser").dialog("close");
                setUserPanel();
            }

        },
        error: function (e) {
            alert("userContext");
            console.log("ERROR: ", e);

        },
        done: function (e) {
        }
    });
}

function updateUser() {
    // some condition to check whether user selected an row or not

    $.ajax({
        type: "POST",
        url: "./editUserAjax.do",
        timeout: 100000,
        cache: false,
        data: {
            userId: id,
            firstName: $("#firstName").val(),
            lastName: $("#lastName").val(),
            age: $("#age").val(),
            email: $("#email").val(),
            userName: $("#userName").val(),
            password: $("#password").val(),
            status: $("#status").val()
        },
        beforeSend: function () {

        },
        complete: function () {

        },
        success: function (data) {

            console.log(data);
            if (data === "success") {
                $("#dialogAddUser").dialog("close");
                setUserPanel();
            }

        },
        error: function (e) {
            alert("userContext");
            console.log("ERROR: ", e);

        },
        done: function (e) {
        }
    });

}

