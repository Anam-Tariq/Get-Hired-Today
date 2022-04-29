<%-- 
    Document   : template1
    Created on : Jun 19, 2020, 6:45:14 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="shortcut icon" href="assets1/images/fav.jpg">
        <link rel="stylesheet" href="assets1/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets1/css/fontawsom-all.min.css">
        <link rel="stylesheet" type="text/css" href="assets1/css/style.css" />
    </head>

    <body>
        <div class="container-fluid overcover">
            <div class="container profile-box">
                <div class="row">
                    <div class="col-lg-4 col-md-5 leftgh">
                        <div class="image-box">
                            <p><input type="file"  accept="image/*" name="image" id="file"  onchange="loadFile(event)" style="display: none;"></p>
                            <p><label for="file" style="cursor: pointer;">Image</label></p>
                            <p><img id="output" width="200" /></p>
                        </div>
                        <script>
                            var loadFile = function (event) {
                                var image = document.getElementById('output');
                                image.src = URL.createObjectURL(event.target.files[0]);
                            };
                        </script>

                        <%
                            try {
                                String phone = session.getAttribute("phone").toString(); 
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
                                String query = "Select * from personal_information where phone='"+phone+"'";
                                Statement stm = conn.createStatement();
                                ResultSet rs = stm.executeQuery(query);
                                while (rs.next()) {
                        %>
                        <div class="name-info">
                            <h1><%=rs.getString("First Name")%>  <%=rs.getString("Last Name")%></h1>

                            <div class="row no-margin">
                                <div class="col-4 no-padding">
                                    Telephone
                                </div>
                                <div class="col-8">
                                    <%=rs.getString("Phone")%>
                                </div>

                            </div>

                            <div class="row no-margin">
                                <div class="col-4 no-padding">
                                    Email
                                </div>
                                <div class="col-8">
                                    <%=rs.getString("Email Address")%>
                                </div>
                            </div>

                            <div class="row no-margin">
                                <div class="col-4 no-padding">
                                    Address
                                </div>
                                <div class="col-8">
                                    <%=rs.getString("Address")%>
                                </div>
                            </div>

                        </div>
                        <div class="profile">
                            <h2>Personal Details</h2>
                            <div class="row no-margin">
                                <div class="col-4 no-padding">
                                    Nationality
                                </div>
                                <div class="col-8">
                                    <%=rs.getString("Nationality")%>
                                </div>
<div class="col-4 no-padding">
                                    Zip Code
                                </div>
                                <div class="col-8">
                                    <%=rs.getString("Zip Code")%>
                                </div>

                                <div class="col-4 no-padding">
                                    Date of Birth
                                </div>
                                <div class="col-8">
                                    <%=rs.getString("Date of Birth")%>
                                </div>

                                <div class="col-4 no-padding">
                                    Gender
                                </div>
                                <div class="col-8">
                                    <%=rs.getString("Gender")%>
                                </div>
                            </div>

                        </div>
                        <%
                                    break;
                                }
                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </div>
                    <div class="col-lg-8 col-md-7 no-padding">
                        <%
                            try {
                                String marks = session.getAttribute("marks").toString(); 
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
                                String query = "Select * from education where marks ='"+marks+"'";
                                Statement stm = conn.createStatement();
                                ResultSet rs = stm.executeQuery(query);
                                while (rs.next()) {
                        %>
                        <div class="rit-data">
                            <h2>Academic Qualification</h2>
                            <ul>
                                <li><b><%=rs.getString("Degree Title")%><span><%=rs.getString("Graduation Start Year")%>-<%=rs.getString("Graduation End Year")%></span></b>
                                    <p><%=rs.getString("University Name")%></p>
                                    <p>CGPA :  <%=rs.getString("CGPA")%></p>
                                </li>
                                <li><b><%=rs.getString("Field of Study")%> <span><%=rs.getString("Batch Year in College")%></span></b>
                                    <p><%=rs.getString("College Name")%></p>
                                    <p>Marks :  <%=rs.getString("Marks")%></p>
                                </li>
                                <li><b><%=rs.getString("Field of Study in School")%> <span><%=rs.getString("Batch Year in School")%></span></b>
                                    <p><%=rs.getString("School Name")%></p>
                                    <p>Marks :  <%=rs.getString("Marks Obtained in School")%></p>
                                </li>
                            </ul>
                            <%
                                        break;
                                    }
                                    conn.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                        </div>
                        <div class="rit-data">
                            <% 
                                try {
                                    String company = session.getAttribute("company").toString(); 
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
                                    String query = "Select * from work_history where company ='"+company+"'";
                                    Statement stm = conn.createStatement();
                                    ResultSet rs = stm.executeQuery(query);
                                    while (rs.next()) {
                            %>

                            <h2>Work Experience</h2>

                            <ul>
                                <li><b><%=rs.getString("Job Title")%> <span><%=rs.getString("Start Year")%>-<%=rs.getString("End Year")
                                %></span></b>
                                    <p><%=rs.getString("Company")%></p>
                                    <p><%=rs.getString("City")%>|<%=rs.getString("State")%></p>
                                </li>
                            </ul>
                            <%
                                        break;
                                    }
                                    conn.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                        </div>

                        <div class="rit-data">

                            <%
                                try {
                                    String title = session.getAttribute("title").toString(); 
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
                                    String query = "Select * from achievements where title ='"+title+"'";
                                    Statement stm = conn.createStatement();
                                    ResultSet rs = stm.executeQuery(query);
                                    while (rs.next()) {
                            %>         
                            <h2>Achievements</h2>

                            <ul>
                                <li><b><%=rs.getString("Name")%> | <%=rs.getString("Title")%><span><%=rs.getString("Year")%></span></b>
                                    <p><%=rs.getString("Description")%></p>   
                                </li>
                            </ul>
                            <%
                                        break;
                                    }
                                    conn.close();
} catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>

                        </div>

                        <div class="rit-data">
                            <%
                                try {
                                    String details = session.getAttribute("details").toString(); 
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
                                    String query = "Select * from projects where details ='"+details+"'";
                                    Statement stm = conn.createStatement();
                                    ResultSet rs = stm.executeQuery(query);
                                    while (rs.next()) {
                            %>
                            <h2>Projects</h2>
                            <ul>
                                <li><b><%=rs.getString("Project Title")%> </b>
                                    <p><%=rs.getString("Details")%></p>
                                </li>
                            </ul>
                            <%
                                        break;
                                    }
                                    conn.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                        </div>

                        <div class="rit-data">
                            <%
                                try {
                                    String description1 = session.getAttribute("description1").toString(); 
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
                                    String query = "Select * from skills where description1 ='"+description1+"'";
                                    Statement stm = conn.createStatement();
                                    ResultSet rs = stm.executeQuery(query);
                                    while (rs.next()) {
                            %>
                            <h2>Technical Skills</h2>
                            <ul>
                                <li><b><%=rs.getString("Skill1")%> </b>
                                    <p><%=rs.getString("Description1")%></p>
                                    <br>
                                    <b><%=rs.getString("Skill2")%> </b>
                                    <p><%=rs.getString("Description2")%></p>
                                </li>
                            </ul>
                            <%
                                        break;
                                    }
                                    conn.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                             </div>

                        <div class="rit-data referencess">
                            <%
                                try {
                                    String cno= session.getAttribute("cno").toString(); 
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
                                    String query = "Select * from references1 where phone ='"+cno+"'";
                                    Statement stm = conn.createStatement();
                                    ResultSet rs = stm.executeQuery(query);
                                    while (rs.next()) {
                            %>
                            <h2>References</h2>
                            <ul>
                                <li>
                                    <p><%=rs.getString("Name of Reference")%> </p>
                                    <p><%=rs.getString("Designation")%> </p>
                                    <p><%=rs.getString("Affiliation")%> </p>  
                                    <i><p><%=rs.getString("Phone")%> | <%=rs.getString("Email Address")%> </p></i>
                                </li>
                            </ul>
                            <%
                                        break;
                                    }
                                    conn.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="about">
            <a href="signout.jsp">
            <button  class="button button1" onclick="window.print()"> Download Resume</button>
            </a>
        </div>
    </body> 

  


</html>
