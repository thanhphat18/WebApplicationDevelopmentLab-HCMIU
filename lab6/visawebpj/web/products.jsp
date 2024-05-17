<%-- 
    Document   : products
    Created on : May 17, 2024, 5:30:06 PM
    Author     : thanhphatchau
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
    </head>
    <%
        String name = request.getParameter("name");
        String visa = request.getParameter("visa");
        String address = request.getParameter("address");
    %>
    <body>
        <div align="center">
            <h2>Hi ${person.name}</h2>
            <p>If you do not want to buy something, input 0 in the quantity.</p>
            <hr>
        </div>
        <div>
            <table>
                <tr>
                    <td>Name:</td>
                    <td>${person.name}</td>
                </tr>
                <tr>
                    <td>
                        Visa:
                    </td>
                    <td>
                        ${person.visa}
                    </td>
                </tr>
                <tr>
                    <td>
                        Address:
                    </td>
                    <td>
                        ${person.address}
                    </td>
                </tr>
            </table>
                    <hr>
        </div>
        
        <div align="center">
            <h2>Products List</h2>
        <%
            if(request.getParameter("Add to Cart")==null){
        %>
            <form action="products.jsp" method="post">
                
                <table border="1px">
                <tr style="display: none;">
                    <td>
                        <input type="text" name="pname" value="<%=name%>" readonly>
                    </td>
                    <td>
                        <input type="text" name="pvisa" value="<%=visa%>" readonly>
                    </td>
                    <td>
                        <input type="text" name="paddress" value="<%=address%>" readonly>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        Product
                        
                    </td>
                    <td>
                        Manufacturer
                        
                    </td>
                    <td>
                        Made in
                        
                    </td>
                    <td>
                        Price
                    </td>
                    <td>
                        Quantity
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        ${person.products[0].name}
                    </td>
                    <td>
                        ${person.products[0].owner}
                    </td>
                    <td>
                        ${person.products[0].country}
                    </td>
                    <td>
                        ${person.products[0].price}
                    </td>
                    <td>
                        <input text="text" name="quantity1" value="0">
                    </td>
                </tr>
                <tr>
                    <td>
                        ${person.products[1].name}
                    </td>
                    <td>
                        ${person.products[1].owner}
                    </td>
                    <td>
                        ${person.products[1].country}
                    </td>
                    <td>
                        ${person.products[1].price}
                    </td>
                    <td>
                        <input text="text" name="quantity2" value="0">
                    </td>
                </tr>
                <tr>
                    <td>
                        ${person.products[2].name}
                    </td>
                    <td>
                        ${person.products[2].owner}
                    </td>
                    <td>
                        ${person.products[2].country}
                    </td>
                    <td>
                        ${person.products[2].price}
                    </td>
                    <td>
                        <input text="text" name="quantity3" value="0">
                    </td>
                </tr>
                <tr>
                    <td>
                        ${person.products[3].name}
                    </td>
                    <td>
                        ${person.products[3].owner}
                    </td>
                    <td>
                        ${person.products[3].country}
                    </td>
                    <td>
                        ${person.products[3].price}
                    </td>
                    <td>
                        <input text="text" name="quantity4" value="0">
                    </td>
                </tr>
                <tr>
                    <td>
                        ${person.products[4].name}
                    </td>
                    <td>
                        ${person.products[4].owner}
                    </td>
                    <td>
                        ${person.products[4].country}
                    </td>
                    <td>
                        ${person.products[4].price}
                    </td>
                    <td>
                        <input text="text" name="quantity5" value="0">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Add to Cart" name="Add to Cart">
                    </td>
                </tr>
            </table>
            </form>
        <%
            } else{
                String username = request.getParameter("pname");
                String uvisa = request.getParameter("pvisa");
                String uaddress = request.getParameter("paddress");
                int q1 = Integer.parseInt(request.getParameter("quantity1"));
                int q2 = Integer.parseInt(request.getParameter("quantity2"));
                int q3 = Integer.parseInt(request.getParameter("quantity3"));
                int q4 = Integer.parseInt(request.getParameter("quantity4"));
                int q5 = Integer.parseInt(request.getParameter("quantity5"));
                int total = 500*q1 + 200*q2 + 1000*q3 + 9000*q4+3000*q5;
                out.println(
                "<table><tr><td>Name:</td><td>"+username+"</td></tr>"+
                "<tr><td>Visa:</td><td>"+uvisa+"</td></tr>"+
                "<tr><td>Address:</td><td>"+uaddress+"</td></tr>"+
                "<tr><td>Total Payment:</td><td> $"+total+"<td></tr>"
                +"</table><h4>Successfully succeeded!!!!</h4>"
                );
            }
        %>      
        </div>
      
    </body>
</html>
