<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
</head>
<body>

  <table border="1"> 
    <thead> 
      <tr> 
        <th>S.No</th> 
        <th>Hometype</th> 
        <th>Rent</th> 
        <th>Size</th> 
        <th>Location</th> 
        <th>Name</th>
        <th>Facilities</th>
        <th>Images</th>
      </tr> 
    </thead> 
    <tbody> 
       <%@ page import="java.util.*" %>
  <%@ page import="com.example.entity.*" %>
  <%@ page import="com.example.services.*" %>
  <% int i=1; 
  ImageService ser=new ImageService();
  @SuppressWarnings("unchecked") 
  List<Homes> list = (List<Homes>) request.getAttribute("allhomes"); %>
 
      <% 
        for (Homes h : list) { 
          List<Image> img = ser.homeImages(h.getId());  
      %> 
      <tr> 
        <td><%=i++%></td> 
        <td><%=h.getHometype()%></td> 
        <td><%=h.getRent()%></td> 
        <td><%=h.getSize()%></td> 
        <td><%=h.getLocation()%></td>
        <td><%=h.getName()%></td>
        <td><%=h.getFacilities()%></td> 
        <td><%
          for(Image ig: img){ %>
           <img src="data:image/jpg;base64,${ig.getdata()}" width="40" height="50"/>
           <%}%></td>
      </tr> 
      <% 
        } 
      %> 
    </tbody> 
  </table> 
</body>
</html>