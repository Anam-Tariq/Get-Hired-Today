<%-- 
    Document   : choose_template
    Created on : Jun 25, 2020, 9:57:07 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Get Hired Today</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            body {
                font: 20px Montserrat, sans-serif;
                line-height: 1.8;
                color: #f5f6f7;
            }
            p {font-size: 16px;}
            .margin {margin-bottom: 45px;}
            .bg-1 { 
                background-color: #1abc9c; /* Green */
                color: #ffffff;
                min-height: 470px;
            }
            .bg-4 { 
                background-color: #2f2f2f; /* Black Gray */
                color: #fff;
            }

            select{
                width:440px;
                color: #ccc;
                font-size: 16px;
            }
            .container-fluid {
                padding-top: 70px;
                padding-bottom: 70px;
            }
            .footer {
                background-color: #3f3f3f; 
                color: #d5d5d5;
                padding-top: 0.4rem;
                padding-bottom: 0.02rem;
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                text-align: center;

            }hr.light {
                border-top: 1px solid #d5d5d5;
                width: 45%;
                margin-top: .8rem;
                margin-bottom: 1rem;
            }
            .navbar {
                padding-top: 15px;
                padding-bottom: 15px;
                border: 0;
                border-radius: 0;
                margin-bottom: 0;
                font-size: 12px;
                letter-spacing: 5px;
            }
            .navbar-nav  li a:hover {
                color: #1abc9c !important;
            }

            #downloadcontent{
                display: none;
                width: 450px;
                margin: 0 auto;
            }

            #downloadcontent a{
                color:#fff;
                font-size: 14px;
                font-weight: 600;
                text-decoration: underline;
            }
        </style>
       
    </head>
    <body>

        <!-- Navbar -->
        <nav class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <p class="navbar-brand">Get Hired Today</p>
                </div>
               
            </div>
        </nav>

        <!-- First Container -->
        <div id="about" class="container-fluid bg-1 text-center">
            <h3 class="margin">Please select a template for resume.</h3>
            <form>
                
                <a href="template1.jsp">
  <img src="template1.png" alt="HTML tutorial" style="width:200px;height:250px;border: 2px solid black;">
</a>&emsp;&emsp;&emsp;&emsp;
<a href="template2.jsp">
  <img src="template2.png" alt="HTML tutorial" style="width:200px;height:250px;border:2px solid black;">
</a><br>
<label for="template1">Cascade</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="template2">Crisp</label>
            </form><br><br>
           
        </div>
 <footer>

            <div class="footer">               
                <hr class="light">

                <h5>&copy; All Rights Reserved</h5>
            </div>
        </footer>
    </body>
</html>

