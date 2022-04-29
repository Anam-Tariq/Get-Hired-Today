<%-- 
    Document   : skills
    Created on : Jun 8, 2020, 2:55:34 PM
    Author     : user
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
    if (request.getParameter("submit") != null) {
        String skill1 = request.getParameter("skill1");
        String description1 = request.getParameter("description1");
        String skill2 = request.getParameter("skill2");
        String description2 = request.getParameter("description2");
        session.setAttribute("description1",description1);

        Connection con;
        PreparedStatement pst;
        ResultSet rs;

        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
        pst = con.prepareStatement("insert into skills values(?,?,?,?)");
        pst.setString(1, skill1);
        pst.setString(2, description1);
        pst.setString(3, skill2);
        pst.setString(4, description2);

        pst.executeUpdate();
        response.sendRedirect("achievements.jsp");

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
        <p style="font-size:30px;color:#1abc9c;">&emsp;&emsp;&emsp;&emsp;What skills do you want to highlight?</p>
        <p style="font-size:20px;color:#566573;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Use our expert recommendations below to get started.</p>
        <br>
        <br>
        <form action="">

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="skill1">Skill 1</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;

            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<select style="width: 300px;height: 35px;" type="text" id="skill1" name="skill1" autofocus><option value="None">select</option><option value="Communications">Communications</option><option value="Customer service">Customer service</option><option value="Budgets">Budgets</option><option value="Project organization">Project organization</option><option value="Supervision">Supervision</option><option value="Team management">Team management</option><option value="Problem Resolution">Problem Resolution</option><option value="Relationship development">Relationship development</option><option value="other">Other</option></select>&ensp;

            <br><br> 

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="description1">Description</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;

            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<input style="width: 600px;height: 30px;" type="text" id="description1" name="description1" autofocus>&ensp;

            <br><br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="skill2">Skill 2(if any)</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;

            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<select style="width: 300px;height: 35px;" type="text" id="skill2" name="skill2" autofocus><option value="None">select</option><option value="Communications">Communications</option><option value="Customer service">Customer service</option><option value="Budgets">Budgets</option><option value="Project organization">Project organization</option><option value="Supervision">Supervision</option><option value="Team management">Team management</option><option value="Problem Resolution">Problem Resolution</option><option value="Relationship development">Relationship development</option><option value="other">Other</option></select>&ensp;

            <br><br> 

            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<label for="description2">Description</label>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;

            <br>
            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&ensp;&nbsp;&nbsp;<input style="width: 600px;height: 30px;" type="text" id="description" name="description2" autofocus>&ensp;

            <br><br>
            <button class="button" type="submit" value="submit" name="submit" >  
                NEXT>> 
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