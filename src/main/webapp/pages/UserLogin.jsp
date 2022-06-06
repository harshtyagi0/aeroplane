<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

  <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.3/css/intlTelInput.min.css" />

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.3/js/intlTelInput.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/17.0.3/js/utils.min.js"></script>
</head>
<style>

    body {
    font-family: Arial;
    text-align: center;
    background: url(https://images.unsplash.com/photo-1605216663789-a86dbd5e59a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1986&q=80);
    padding-top: 5%;
    padding-bottom: 10%;
    padding-left: 30%;
    padding-right: 30%;
}
form {
    border: 3px solid #f1f1f1;
    text-align: left;
}
input[type=text], input[type=date]{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid rgb(236, 223, 223);
  box-sizing: border-box;
  text-align: left;
}
.container {
  padding: 16px;
}
span.Alredy {
  float: right;
  padding-top: 16px;
}
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

</style>
<title>Passenger SignUp</title>
</head>
<body>

    <h1><b>User SignUp</b></h1>

	<form action="#" method="post">
        <div class="container">
            <b>
                <label>Full Name(as in passport)</label><br>
                <input type="text" placeholder="Enter Full name"><br>
                
                <label>Gmail Address</label><br>
                <input type="text" placeholder="Enter mail id"><br>
            
                <label>Contact Number</label><br>
                <input type="text" placeholder="Enter contact number"><br>

                <label>Passport Number</label><br>
                <input type="text" placeholder="Enter passport number"><br>

                <label>Address</label><br>
                <input type="text" placeholder="Enter Address"><br>
                
                <br><label>Password</label><br>
                <input type="text" placeholder="Enter password"><br>

                <label>Date of Birth</label><br>
                <input type="date" placeholder="Enter age"><br>

                Contact Number
                <input type="text" id="phone" />
                <script>
                    var input = document.querySelector("#phone");
                    intlTelInput(input, {
                    initialCountry: "auto",
                    geoIpLookup: function (success, failure) {
                    $.get("https://ipinfo.io", function () { }, "jsonp").always(function (resp) {
                    var countryCode = (resp && resp.country) ? resp.country : "us";
                    success(countryCode);
                    });
                     },
                    });
                </script><br>

               
                <label>Gender</label><br>
                <input type="radio" name="gender" value="male"> Male
                <input type="radio" name="gender" value="female"> Female
                <input type="radio" name="gender" value="other"> Other<br>

            
            </b>
        </div>
        <span class="Alredy">Alredy have an account? <a href="#">Login</a></span>

        <div class="container" style="background-color:#f1f1f1">
            <button type="button" class="register">Register</button>
          </div>
        </form>



    </form>
</body>
</html>
