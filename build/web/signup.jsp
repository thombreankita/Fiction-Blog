<%-- 
    Document   : signup
    Created on : 24-Sep-2022, 11:10:04 am
    Author     : thomb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
         <!-- CSS -->
        <link rel="stylesheet" href="css/styles.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>        
        <script src="https://kit.fontawesome.com/f1f108aa73.js" crossorigin="anonymous"></script>
    </head>
    <body>
         <%@include file="navigbar.jsp" %>
        
        <main class="d-flex align-items-center" style="height: 98vh">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="card">
                            <div class="card-header primary-bg text-white text-center">
                                <i class="fas fas fa-user-plus fa-3x"></i><br>
                                <p>SIGN UP</p>
                            </div>
                            <div class="card-body">
                                <form id="sign-form" action="SignUpServlet" method="POST">
                                <div class="mb-3">
                                  <label for="name" class="form-label">Username</label>
                                  <input name="name" type="text" class="form-control" id="username" placeholder="Enter Username">
                                </div>
                                <div class="mb-3">
                                  <label for="email" class="form-label">Email address</label>
                                  <input name="email" type="email" class="form-control" id="email1" placeholder="Email">
                                </div>
                                <div class="mb-3">
                                  <label for="pass" class="form-label">Password</label>
                                  <input name="pass" type="password" class="form-control" id="password">
                                </div>
                                <div class="mb-3">
                                    <label for="gender" class="form-label">Gender</label><br>
                                    <input type="radio" id="gender" name="gender" value="Male"> Male
                                    <input type="radio" id="gender" name="gender" value="Female"> Female
                                    <input type="radio" id="gender" name="gender" value="Unknown"> Prefer not to tell
                                </div>
                                <div class="form-group">

                                    <textarea name="about"  class="form-control" id=""  rows="5" placeholder="Enter something about yourself"></textarea>

                                </div>

                                <div class="mb-3 form-check">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                                  <label class="form-check-label" for="exampleCheck1">Agree Terms and Condition</label>
                                </div>
                                    <div class="container text-center" id="loader" style="display: none;">
                                    <i class="fas fa-spinner fa-spin fa-3x"></i><br>
                                    <h4>Please Wait..</h4>
                                    </div>
                                <button type="submit" class="btn btn-secondary">Submit</button>
                              </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
               
        
       <!--js-->
        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
      <script>
           $(document).ready(function (){
               console.log("Loaded...");
               
               $('#sign-form').on('submit',function(event){
                   
                   event.preventDefault();           
                                      
                   let form = new FormData(this);
                   
                   $("#submit-btn").hide();
                   $("#loader").show();
                   
                   $.ajax({
                      url:"SignUpServlet",
                      type:'POST',
                      data: form,
                      success: function(data, textStatus, jqXHR){
                          console.log(data)
                          
                          
                         $("#submit-btn").show();
                         $("#loader").hide();
                         
//                         if(data.trim === 'done')
//                         {
                         swal("You have Registered Successfully!! We are redirecting you to Login Page")
                                .then((value) => {
                                  window.location="login.jsp";
                                });
//                            }
//                            else
//                            {
//                                swal(data);
//                            }
                      },
                      error: function(jqXHR, textStatus, errorThrown){
                          console.log(jqXHR)
                          
                          $("#submit-btn").show();
                         $("#loader").hide();
                         
                         swal("Something went Wrong");
                                
                      },
                      processData: false,
                      contentType: false
                   });
                   
               })
           })
       </script>
       
    </body>
</html>
