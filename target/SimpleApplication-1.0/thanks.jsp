<%-- 
    Document   : thanks
    Created on : Sep 12, 2021, 9:05:39 PM
    Author     : 19110
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Simple Applicatoin</title>
        <link rel="stylesheet" href="Style/main.css" type="text/css"/>
    <head>
    <body>
        <% 
            float factorA= Float.parseFloat(request.getParameter("factorA"));
            float factorB= Float.parseFloat(request.getParameter("factorB"));
            float factorC= Float.parseFloat(request.getParameter("factorC"));
        %>
        <h1><%out.print(factorA);%>x<sup>2</sup>+<%out.print(factorB);%>x+<%out.print(factorC);%>=0</h2>
        <h2>Result:</h1>
        <%
            if(factorA==0){
                if(factorB==0){
                    if(factorC==0){ 
                        out.println("Equation with infinite solutions.");
                    }
                    else{
                        out.println("The equation has no solution.");
                    }
                }
                else{
                    float x=(float)(-factorC/factorB);
                    out.println("Equation has 1 solution x= "+x);
                }
            }
            else{
                float delta= (float)(factorB*factorB-4*factorA*factorC); 
                if(delta>0){
                    float x1=(float)(-factorB-Math.sqrt(delta))/(2*factorA);
                    float x2=(float)(-factorB+Math.sqrt(delta))/(2*factorA);
                    %> <p>Equation has 2 solution:<br> x<sub>1</sub>= <%out.print(x1);%></p><%
                    %><p>x<sub>2</sub>= <%out.print(x2);%></p><%                 
                }
                else if(delta==0){
                    float x=(float)(-factorB/(2*factorA));
                    %><p>The equation has a double solution x<sub>1</sub>= x<sub>2</sub>= <%out.print(x);%></p><%
                }
                else{
                    out.println("The equation has no solution.");
                }
            }    
        %>
        <form action="" method="get">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>
    </body>
</html>
