<%-- 
    Document   : education
    Created on : Jun 7, 2020, 9:23:43 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    if (request.getParameter("submit") != null) {
        String jtitle = request.getParameter("jtitle");
        String company = request.getParameter("company");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String stdate = request.getParameter("stdate");
        String enddate = request.getParameter("enddate");
        session.setAttribute("company",company );

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
        pst = con.prepareStatement("insert into work_history values(?,?,?,?,?,?)");
        pst.setString(1, jtitle);
        pst.setString(2, company);
        pst.setString(3, city);
        pst.setString(4, state);
        pst.setString(5, stdate);
        pst.setString(6, enddate);

        pst.executeUpdate();
        response.sendRedirect("education.jsp");

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
                background-color:#E74C3C;
                font-size:15px;
                border-radius: 8px;
                width: 250px;
                color: white;
                padding: 20px;
                position: absolute;
                top: 70%;
                left: 70%;

            }.footer {
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
        <p style="font-size:30px;color:#1abc9c;">&emsp;&emsp;&emsp;&emsp;Tell us about your most recent job</p>
        <p style="font-size:20px;color:#566573;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;We'll start there and work backward.</p>
        <br>
        <br>
        <form method="POST" action="">

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="jtitle">Job Title</label>&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
            <label for="company">Company</label>
            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<input style="width: 300px;height: 30px;" type="text" id="jtitle" name="jtitle" autofocus>&ensp;
            <input style="width: 325px;height: 30px;" type="text" id="company" name="company" autofocus>
            <br><br> 

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="city">City</label>&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;
            <label for="state">State</label>
            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<input style="width: 300px;height: 30px;" type="text" id="city" name="city" autofocus>&ensp;
            <input style="width: 325px;height: 30px;" type="text" id="state" name="state" autofocus>
            <br><br>

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="stdate">Start Date</label>&emsp;&emsp;&nbsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;
            <label for="enddate">End Date</label>
            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<input style="width: 300px;height: 30px;" type="text" id="stdate" name="stdate" autofocus>&ensp;
            <input style="width: 325px;height: 30px;" type="text" id="enddate" name="enddate" autofocus>
            <br><br>


            <button class="button" type="submit" value="submit" name="submit">
                NEXT >>
            </button>
        </form> 
        <footer>

            <div class="footer">               
                <hr class="light">

                <h5>&copy; All Rights Reserved</h5>
            </div>
        </footer>



    </body>
</html>