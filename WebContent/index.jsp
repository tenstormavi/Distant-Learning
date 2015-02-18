<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>

<html>
<head><title>Upload page</title></head></p> <p><body>
<form action="FileUpload" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <div align="center">
  <table border="2">
       
                  <tr>
               <td align="right"><b>Enter the pdf</td>
               <td>
                       <input name="file" type="file" id="file">
                   <td>
           </tr>
                 <tr>
                    <td align="center">
               <input type="submit" name="Submit" value="Submit"/>
                           <input type="reset" name="Reset" value="Reset"/>
                        </td>
                 </tr>
    </table>
    <div id="image" >
    	<%
    	if(session.getAttribute("allimgs")!=null){
    	List arr =  (List)session.getAttribute("allimgs");
    	Iterator list = arr.iterator();
    	while(list.hasNext())
    	{
    		    String imagename=  (String)list.next();
    			String imgpath = getServletContext().getRealPath("/")+"images/"+imagename;
    			out.println("<img src=\"FileUpload?path1="+imgpath+"\" width=\"200px\" height=\"200px\" />");
    			out.println("<a href=\"FileDownload?path1="+imgpath+"\" >"+imagename+"</a>");
    		}
    	}
    	
    	%>
    </div>
        </div>
 </form>
 </body>
 </html>