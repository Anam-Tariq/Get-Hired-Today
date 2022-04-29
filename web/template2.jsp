<%-- 
    Document   : template2
    Created on : Jun 16, 2020, 2:52:27 PM
    Author     : user
--%>

<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Get Hired Today</title>

    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <style>
.button {
  background-color: #00ab9f; 
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  
  background-color: #00ab9f;
  color: white;
}

.button1:hover {
  background-color: white; 
  color: black;
  border: 2px solid #00ab9f;
  ;
}
</style>
</head>

<body>
    <div class="container-fluid overcover">
        <div class="container profile-box">
            <div class="row">
                <div class="col-md-4 left-co">
                    <div class="left-side">
                        <div class="profile-info">
                            <p><input type="file"  accept="image/*" name="image" id="file"  onchange="loadFile(event)" style="display: none;"></p>
<p><label for="file" style="cursor: pointer;">Image</label></p>
<p><img id="output" width="200" /></p>

<script>
var loadFile = function(event) {
	var image = document.getElementById('output');
	image.src = URL.createObjectURL(event.target.files[0]);
};
</script>
                            
                                        <%
try{
    String phone = session.getAttribute("phone").toString(); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
    String query = "Select * from personal_information where phone='"+phone+"'";
    Statement stm =conn.createStatement();
    ResultSet rs = stm.executeQuery(query);
    while(rs.next()){
%>
                            <h3><%=rs.getString("First Name") %> <%=rs.getString("Last Name") %></h3>
                            <span><%=rs.getString("Profession") %></span>
                        </div>
                        <h4 class="ltitle">Contact</h4>
                        <div class="contact-box pb0">
                            <div class="icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="detail">
                                <%=rs.getString("Phone") %>
                            </div>
                        </div>
                        <div class="contact-box pb0">
                            <div class="icon">
                                <i class="fas fa-globe-americas"></i>
                            </div>
                            <div class="detail">
                                <%=rs.getString("Email Address") %>
                            </div>
                        </div>
                        <div class="contact-box">
                            <div class="icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="detail">
                                <%=rs.getString("Address") %><br>
                                <%=rs.getString("Zip Code") %>
                            </div>
                        </div>
                        <h4 class="ltitle">Contact</h4>
                        <ul class="row social-link no-margin">
                            <li><i class="fab fa-facebook-f"></i></li>
                            <li><i class="fab fa-twitter"></i></li>
                            <li><i class="fab fa-google-plus-g"></i></li>
                            <li><i class="fab fa-linkedin-in"></i></li>
                            <li><i class="fab fa-github"></i></li>
                        </ul>
                                <%
    break;
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<%
try{
    String cno = session.getAttribute("cno").toString(); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
    String query = "Select * from references1 where phone='"+cno+"'";
    Statement stm =conn.createStatement();
    ResultSet rs = stm.executeQuery(query);
    while(rs.next()){
%>
                        <h4 class="ltitle">References</h4>

                        <div class="refer-cov">
                            <b><%=rs.getString("Name of Reference") %></b>
                            <p><%=rs.getString("Designation") %></p>
                            <p><%=rs.getString("Affiliation") %></p>
                            <span><%=rs.getString("Phone") %></span><br>
                            <span><%=rs.getString("Email Address") %></span>
                        </div>
                        
                                                       <%
    break;
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                        <h4 class="ltitle">Hobbies</h4>
                        <ul class="hoby row no-margin">
                            <li><i class="fas fa-pencil-alt"></i> <br> Writing</li>
                            <li><i class="fas fa-bicycle"></i> <br> Cycling</li>
                            <li><i class="fas fa-futbol"></i> <br> Football</li>
                            <li><i class="fas fa-film"></i><br> Movies</li>
                            <li><i class="fas fa-plane-departure"></i> <br>Travel</li>
                            <li><i class="fas fa-gamepad"></i> <br> Games</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8 rt-div">
                    <div class="rit-cover">
                        <div class="hotkey">
                                                                    <%
try{
    String phone = session.getAttribute("phone").toString(); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
    String query = "Select * from personal_information where phone='"+phone+"'";
    Statement stm =conn.createStatement();
    ResultSet rs = stm.executeQuery(query);
    while(rs.next()){
%>
                            <h1 class=""><%=rs.getString("First Name") %> <%=rs.getString("Last Name") %></h1>
                            <small><%=rs.getString("Profession") %></small>
                        </div>
                                                           <%
    break;
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                        
<%
try{
    String company = session.getAttribute("company").toString(); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
    String query = "Select * from work_history where company ='"+company+"'";
    Statement stm =conn.createStatement();
    ResultSet rs = stm.executeQuery(query);
    while(rs.next()){
%>
                        <h2 class="rit-titl"><i class="fas fa-briefcase"></i> Work Experience</h2>
                        <div class="work-exp">
                            <h6><span><%=rs.getString("Start Year") %> - <%=rs.getString("End Year") %> </span></h6>
                            <h5><%=rs.getString("Job Title") %></h5>
                            <i><%=rs.getString("Company") %></i><br>
                            <i> <%=rs.getString("City") %> <%=rs.getString("State") %> </i><br>
                            
                            
                        </div>
                                                                                                           <%
    break;
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<%
try{
    String title = session.getAttribute("title").toString(); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
    String query = "Select * from achievements where title ='"+title+"'";
    Statement stm =conn.createStatement();
    ResultSet rs = stm.executeQuery(query);
    while(rs.next()){
%>
                            
                        <div class="work-exp">
                            <h6><span><%=rs.getString("Year") %></span></h6>
                            <h5>Achievements </h5>
                            <i><%=rs.getString("Name") %></i><br>
                            <i><%=rs.getString("Title") %> <%=rs.getString("Year") %></i><br>
                           
                            <ul>
                                <li><i class="far fa-hand-point-right"></i><i><%=rs.getString("Description") %></i></li>
                                
                                
                            </ul>
                        </div>
                        
                                                                               <%
    break;
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<%
try{
    String marks = session.getAttribute("marks").toString(); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
    String query = "Select * from education where marks ='"+marks+"'";
    Statement stm =conn.createStatement();
    ResultSet rs = stm.executeQuery(query);
    while(rs.next()){
%>

                        <h2 class="rit-titl"><i class="fas fa-graduation-cap"></i> Education</h2>
                        <div class="education">
                            <ul class="row no-margin">
                                <li class="col-md-6"><span><%=rs.getString("Graduation Start Year") %>-<%=rs.getString("Graduation End Year") %></span> <br>
                                    <%=rs.getString("Degree Title") %> - <%=rs.getString("University Name") %><br>
                                    CGPA= <%=rs.getString("CGPA") %></li>
                                <li class="col-md-6"><span><%=rs.getString("Batch Year in College") %></span> <br>
                                    <%=rs.getString("Field of Study") %> - <%=rs.getString("College Name") %><br>
                                    Marks Obtained= <%=rs.getString("Marks") %></li>
                                <li class="col-md-6"><span><%=rs.getString("Batch Year in School") %></span> <br>
                                    <%=rs.getString("Field of Study in School") %> - <%=rs.getString("School Name") %><br>
                                    Marks Obtained= <%=rs.getString("Marks Obtained in School") %></li>
                            </ul>
                        </div>
                                                                                                       <%
    break;
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                        
                        <h2 class="rit-titl"><i class="far fa-user"></i> Projects</h2>
                                                   <%
    try{
    String details = session.getAttribute("details").toString(); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
    String query = "Select * from projects where details ='"+details+"'";
    Statement stm =conn.createStatement();
    ResultSet rs = stm.executeQuery(query);
    while(rs.next()){
%>
                            <h5><%=rs.getString("Project Title") %><span></span></h5>
                            <ul>
                                <li><i class="far fa-hand-point-right"></i><i><%=rs.getString("Details") %></i></li>
                                
                                
                            </ul> <br><br>
                                                                                                                                           <%
    break;
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                        

                        <h2 class="rit-titl"><i class="fas fa-users-cog"></i> Skills</h2>
                        <div class="work-exp">
                            <%
    try{
    String description1= session.getAttribute("description1").toString(); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/html3", "root", "anamt124");
    String query = "Select * from skills where description1 ='"+description1+"'";
    Statement stm =conn.createStatement();
    ResultSet rs = stm.executeQuery(query);
    while(rs.next()){
%>
                            <h5><%=rs.getString("Skill1") %><span></span></h5>
                            <ul>
                                <li><i class="far fa-hand-point-right"></i><i><%=rs.getString("Description1") %></i></li>
                                
                                
                            </ul>
                                <h5><%=rs.getString("Skill2") %><span></span></h5>
                            <ul>
                                <li><i class="far fa-hand-point-right"></i><i><%=rs.getString("Description2") %></i></li>
                                
                                
                            </ul><br>
                            
                                                                                                           <%
    break;
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
                            
                        </div>
<div class="about">
            <a href="signout.jsp">
            <button  class="button button1" onclick="window.print()"> Download Resume</button>
            </a>
        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/script.js"></script>


</html>