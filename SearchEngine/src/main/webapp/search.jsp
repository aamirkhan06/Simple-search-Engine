<%@page import = "java.util.ArrayList"%>
<%@page import = "com.Accio.SearchResult"%>
<html>
<head>
  <link rel = "stylesheet" type = "text/css" href = "styles.css">
</head>
<body>
<h1>Simple Search Engine</h1>
<form action = "Search">  <!--to trigger Search action-->
   <!-- use to create the text field for search bar -->
   <input type="text" name = "keyword"></input>

   <!-- use to create a button for search results -->
   <button type ="submit">Search</button>
</form>
<form action = "History">  <!--to trigger History action-->
   <!-- use to create a button for history results-->
   <button type ="submit">History</button>
</form>

  <table border = 2 class = "resultTable">
     <tr>
          <th>Title</th>
          <th>Link</th>
     </tr>
     <%
        ArrayList<SearchResult> results = (ArrayList<SearchResult>)request.getAttribute("results");
        for(SearchResult result:results){
     %>
     <tr>
         <td><%out.println(result.getTitle());%></td>
         <td><a href="<%out.println(result.getLink());%>"><%out.println(result.getLink());%></a></td>
     </tr>
     <%
        }
     %>
  </table>
</body>
</html>