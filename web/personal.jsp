<%-- 
    Document   : personal
    Created on : Jun 7, 2020, 6:39:31 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    if (request.getParameter("submit") != null) {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String prof = request.getParameter("prof");
        String add = request.getParameter("add");
        String code = request.getParameter("code");
        String nation = request.getParameter("nation");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        session.setAttribute("phone",phone);

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
        pst = con.prepareStatement("insert into personal_information values(?,?,?,?,?,?,?,?,?,?)");
        pst.setString(1, fname);
        pst.setString(2, lname);
        pst.setString(3, prof);
        pst.setString(4, add);
        pst.setString(5, code);
        pst.setString(6, nation);
        pst.setString(7, dob);
        pst.setString(8, gender);
        pst.setString(9, phone);
        pst.setString(10, email);
        pst.executeUpdate();
        response.sendRedirect("work_history.jsp");

    }
%>
<!DOCTYPE html>
<html>
    <head>
         <title>Get Hired Today</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            .button {
                box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
                background-color: #E74C3C;
                font-size: 15px;
                border-radius: 8px;
                width: 250px;
                color: white;
                padding: 20px;
                position: absolute;
                top: 70%;
                left: 70%;
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
            }.container {
                position: relative;
                background-color:#1abc9c;
            }

            .navbar {
                padding-top: 15px;
                padding-bottom: 15px;
                border: 0;
                border-radius: 0;
                margin-bottom: 0;
                font-size: 12px;
                letter-spacing: 5px;
                background-color:#1abc9c;
                
            }
            .navbar-nav  li a:hover {
                background-color:#1abc9c;
            }

            #downloadcontent{
                display: none;
                width: 450px;
                margin: 0 auto;
                background-color:#1abc9c;
               
            }

            #downloadcontent a{
                background-color:#1abc9c;
                font-size: 14px;
                font-weight: 600;
                text-decoration: underline;
                
            }
        </style>
    </head>
    <body>


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
        </nav><br>
        <p style="font-size:30px;color:#1abc9c;">&emsp;&emsp;&emsp;&emsp;What’s the best way for employers to contact you?</p>
        <p style="font-size:20px;color:#566573;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;We suggest including an email and phone number.</p>
        <br>
        <br>
        <form method="POST" action="" onsubmit="return validation()">

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="fname">First name</label>&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;
            <label for="lname">Last name</label>

            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<input style="width: 300px;height:30px;" type="text" id="fname" name="fname" autofocus>&ensp;
            <input style="width: 325px;height:30px;" type="text" id="lname" name="lname" autofocus>

            <br><br> 

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="prof">Profession</label>&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&ensp;&emsp;&ensp;&nbsp;
            <label for="add">Address</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&emsp;&emsp;&nbsp;&nbsp;&ensp;&nbsp;
            <label for="code">Zip Code</label>
            <br>

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input style="width: 200px;height:30px;" type="text" id="prof" name="prof" autofocus>&ensp;
            <input style="width: 200px; height:30px;" type="text" id="add" name="add" autofocus>&ensp;
            <input style="width: 210px; height:30px;" type="text" id="code" name="code" autofocus><br><br>

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="nation">Nationality</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            <label for="dob">Date of Birth</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&ensp;
            <label for="gender">Gender</label>
            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input style="width: 200px;height:30px;" type="text" id="nation" name="nation" autofocus>&ensp;
            <input style="width: 200px; height:30px;" type="date" id="dob" name="dob" autofocus>&ensp;
            <input style="width: 210px; height:30px;" type="text" id="gender" name="gender" autofocus><br><br>

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="phone">Phone</label>&emsp;&emsp;&emsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&ensp;&ensp;&ensp;&nbsp;&nbsp;
            <label for="email">Email Address</label>
            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input style="width: 300px;height:30px;" type="text" id="phone" name="phone" autofocus>&ensp;&nbsp;
            <input style="width:322px; height:30px;" type="text" id="email" name="email" autofocus><br><br><br><br>

            <button class="button" type="submit" value="submit" name="submit" >  
                NEXT:WORK HISTORY >>
            </button>

        </form> 


        <script type=text/javascript">
            function validation() {
                if (fname == "") {
                    innerHTML = " ** Please fill the full name field";
                    return false;

                }

            }



        </script>

        <footer>

            <div class="footer">               
                <hr class="light">

                <h5>&copy; All Rights Reserved</h5>
            </div>

        </div>
    </div>
</footer>



</body>
</html>