<!--
	Group 14
	CP: Aya Shimizu (ashimizu@usc.edu)
    Yiyang Hou (yiyangh@usc.edu)
    Sean Syed (seansyed@usc.edu)
    Eric Duguay (eduguay@usc.edu)
    Xing Gao (gaoxing@usc.edu)
    Sangjun Lee (sangjun@usc.edu)
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
    crossorigin="anonymous">
    </script>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
    crossorigin="anonymous">
  <title>Brute Force</title>
</head>

<body>
  <h1 class="display-4  text-center bg-cardinal">
    <span class="align-text-top text-gold">Brute</span>
    <span class="align-text-top text-white">Force</span>
  </h1>
  <nav class="navbar navbar-expand-md navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">Brute Force</a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#nav-items">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="nav-items">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">

        </ul>
      </div>
    </div>
  </nav>
  <span id="message" style="display:none;">${message}</span>
  <div class="container my-5">
  	<div class="row my-1">
      <div class="col-md-8 col-lg-6 mx-auto">
        <input id="email" type="text" class="form-control w-sm-75 mx-auto" placeholder="Email" aria-label="Email"
          aria-describedby="basic-addon2">
      </div>
  </div>
  <div class="row my-2">
      <div class="col-md-8 col-lg-6 mx-auto">
        <input id="password" type="password" class="form-control w-sm-75 mx-auto" placeholder="Password" aria-label="Password"
          aria-describedby="basic-addon2">
      </div>
  </div>
   <div class="row my-2">
      <div class="col-md-8 col-lg-6 mx-auto">
        <button id="login-button" class="btn btn-cardinal mx-auto w-100">Login</button>
      </div>
  </div>
  <div class="row my-2">
      <div class="col-md-8 col-lg-6 mx-auto text-center d-flex justify-content-center">
        <span class="mr-5">Not registered yet? </span><a class="ml-5" data-toggle="modal" data-target="#registerModal">Register</a>
      </div>
  </div>
</div>
  <!-- REGISTER MODAL -->
  <div class="modal fade text-dark" id="registerModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">New Account</h5>
          <button class="close" data-dismiss="modal">
            <span>&times;</span>
          </button>
        </div>
        <div id="modalContent" class="modal-body">
          <form id="register-form" action="">
            <div class="form-group">
              <input id="register-email" type="email" class="form-control" placeholder="Email">
            </div>
            <div class="form-group">
              <input id="register-fname" type="text" class="form-control" placeholder="First Name">
            </div>
            <div class="form-group">
              <input id="register-lname" type="text" class="form-control" placeholder="Last Name">
            </div>
            <div class="form-group">
              <input id="register-password" type="password" class="form-control" placeholder="Password"></textarea>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button id="register-button" class="btn btn-cardinal btn-block">Register</button>
        </div>
      </div>
    </div>
  </div>


  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
    crossorigin="anonymous"></script>

  <!-- Optional JavaScript -->
  <script>
    $('#year').text(new Date().getFullYear());
    $(document).ready(function () {
      $('#register-button').click(function (event) {
        register();
      });
      $('#registerModal').on('hidden.bs.modal', function (e) {
        resetModal();
      });
      $('#login-button').on('click', function (e) {
        login();
      });
      if($('#message').text() != '') {
    	  alert($('#message').text());
      }
    });
    function resetModal() {
      $('#register-form').remove();
      $('#result-alert').remove();
      $('#register-button').text('register');
      $('#register-button').unbind("click");
      $('#register-button').click(function (event) {
        register();
      });
      var form = $('<form id="register-form" action=""></form>');
      var emailDiv = $('<div class="form-group"><input id="register-email" type="email" class="form-control" placeholder="Email"></div>');
      var fnameDiv = $('<div class="form-group"><input id="register-fname" type="text" class="form-control" placeholder="First Name"></div>');
      var lnameDiv = $('<div class="form-group"><input id="register-lname" type="text" class="form-control" placeholder="Last Name"></div>');
      var passwordDiv = $('<div class="form-group"><input id="register-password" type="password" class="form-control" placeholder="Password"></div>');
      emailDiv.appendTo(form);
      fnameDiv.appendTo(form);
      lnameDiv.appendTo(form);
      passwordDiv.appendTo(form);
      form.appendTo($('#modalContent'));
    }
    function register() {
      var email = $('#register-email').val();
      var fname = $('#register-fname').val();
      var lname = $('#register-lname').val();
      var password = $('#register-password').val();

      //IMPLEMENT HASHING
      $.ajax({
        url: 'BruteForce',
        data: {
          callType: 'create_user',
          email: email,
          fname: fname,
          lname: lname,
          password: password
        },
        dataType: "json",
        success: function (result) {
          //Result must include:
          //Whether the user was successfully created or not
          // $('#registerModal').modal('dispose');
          //REMOVE CONTENTS IN MODAL & ADD MESSAGE
          $('#register-form').remove();
          var message = $('<div id="result-alert" class="alert" role="alert"></div>');
          if (result.result == "success") {
            message.addClass('alert-success');
            message.text("Success");
            $('#register-button').text('Close');
            $('#register-button').unbind("click");
            $('#register-button').click(function (event) {
              $('#registerModal').modal('hide');
            });
          } else {
            message.addClass('alert-danger');
            message.text(result.message);
            $('#register-button').text('Redo');
            $('#register-button').unbind("click");
            $('#register-button').click(function (event) {
              resetModal();
            });
          }
          message.appendTo($('#modalContent'));
        }
      });
    }
    function login() {
    	var email = $('#email').val();
        var password = $('#password').val();
    	var form = $('<form id="login-form" method="POST" action="BruteForce" style="display:none;"></form>');
    	var callTypeInput = $('<input type="text" name="callType">');
    	var emailInput = $('<input type="email" name="email">');
    	var passwordInput = $('<input type="password" name="password">');
    	
    	callTypeInput.val('login_user');
    	emailInput.val(email);
    	passwordInput.val(password);
    	
    	callTypeInput.appendTo(form);
    	emailInput.appendTo(form);
    	passwordInput.appendTo(form);
    	form.appendTo($('body'));
    	form.submit();
      /* 
      $.ajax({
        url: 'BruteForce',
        data: {
          callType: 'login_user',
          email: email,
          password: password
        },
        dataType: "json",
        success: function (result) {
          if (result.result == "success") {
            window.location = result.redirectURL + '?email=' + email;
          } else {
        	  $('#email').val("");
        	  $('#password').val("");
        	  alert(result.message);
          }
        }
      }); */
    }
  </script>
</body>
</html>