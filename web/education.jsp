<%-- 
    Document   : education
    Created on : Jun 7, 2020, 9:31:40 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    if (request.getParameter("submit") != null) {
        String uname = request.getParameter("uname");
        String title = request.getParameter("title");
        String gstyear = request.getParameter("gstyear");
        String gendyear = request.getParameter("gendyear");
        String cgpa = request.getParameter("cgpa");
        String cname = request.getParameter("cname");
        String fstudy = request.getParameter("fstudy");
        String year = request.getParameter("year");
        String marks = request.getParameter("marks");
        String sname = request.getParameter("sname");
        String fstudy1 = request.getParameter("fstudy1");
        String year1 = request.getParameter("year1");
        String marks1 = request.getParameter("marks1");
        session.setAttribute("marks",marks);
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
        pst = con.prepareStatement("insert into education values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
        pst.setString(1, uname);
        pst.setString(2, title);
        pst.setString(3, gstyear);
        pst.setString(4, gendyear);
        pst.setString(5, cgpa);
        pst.setString(6, cname);
        pst.setString(7, fstudy);
        pst.setString(8, year);
        pst.setString(9, marks);
        pst.setString(10, sname);
        pst.setString(11, fstudy1);
        pst.setString(12, year1);
        pst.setString(13, marks1);
        
        
        

        pst.executeUpdate();
        response.sendRedirect("skills.jsp");

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
                top: 115%;
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
        <p style="font-size:30px;color:#1abc9c;">&emsp;&emsp;&emsp;&emsp;Tell us about your education</p>
        <p style="font-size:20px;color:#566573;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Include every school, even if you're still there or didn't graduate.</p>
        <br>
        <br>
        <form method="POST" action="">

            <p style="font-size:15px;color:#000000; "><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;UNIVERSITY INFORMATION:</b></p>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="uname">University Name</label>&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
            <label for="title">Degree Title</label>
            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<input style="width: 300px;height: 30px;" type="text" id="uname" name="uname" autofocus>&ensp;
            <input style="width: 325px;height: 30px;" type="text" id="title" name="title" autofocus>
            <br><br> 

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<label for="gstyear"> Graduation Start Year</label>&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;
            <label for="gendyear">Graduation End Year</label>&emsp;&emsp;&emsp;&emsp;&emsp;
            <label for="cgpa">CGPA</label>
            <br>

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<input style="width: 200px;height:30px;" type="text" id="gstyear" name="gstyear" autofocus>&ensp;
            <input style="width: 200px; height:30px;" type="text" id="gendyear" name="gendyear" autofocus>&ensp;
            <input style="width: 210px; height:30px;" type="text" id="cgpa" name="cgpa" autofocus><br><br><br>

            <p style="font-size:15px;color:#000000; "><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;COLLEGE INFORMATION:</b></p>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="cname">College Name</label>&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label for="fstudy">Field of Study</label>
            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<input style="width: 300px;height: 30px;" type="text" id="cname" name="cname" autofocus>&ensp;
            <input style="width: 325px;height: 30px;" type="text" id="fstudy" name="fstudy" autofocus>
            <br><br>

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="year">Batch Year in College</label>&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label for="marks">Marks Obtained/Total Marks</label>
            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<input style="width: 300px;height: 30px;" type="text" id="year" name="year" autofocus>&ensp;
            <input style="width: 325px;height: 30px;" type="text" id="marks" name="marks" autofocus>
            <br><br><br>

            <p style="font-size:15px;color:#000000; "><b>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;SCHOOL INFORMATION:</b></p>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="sname">School Name</label>&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label for="fstudy1">Field of Study in School</label>
            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<input style="width: 300px;height: 30px;" type="text" id="sname" name="sname" autofocus>&ensp;
            <input style="width: 325px;height: 30px;" type="text" id="fstudy1" name="fstudy1" autofocus>
            <br><br>

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="year1">Batch Year in School</label>&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <label for="marks1">Marks Obtained/Total Marks</label>
            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<input style="width: 300px;height: 30px;" type="text" id="year1" name="year1" autofocus>&ensp;
            <input style="width: 325px;height: 30px;" type="text" id="marks1" name="marks1" autofocus>
            <br><br><br><br><br><br><br>


            <button class="button" type="submit" value="submit" name="submit">
                SAVE & NEXT >>
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
