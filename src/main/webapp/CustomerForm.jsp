<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customers Store Application</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">
      *{
             font-family: cursive;
       }
        </style>
        <script type="text/javascript">
            function validate()
            {
                var valid = true;

                try
                {
                var firstName = document.getElementById("firstName");
                var lastName = document.getElementById("lastName");
                var email = document.getElementById("email");
                var mobile = document.getElementById("mobile").value;

                var errorMsg = "[";

                    if(firstName.value.length<=0 )
                    {
                        valid = false;
                       errorMsg = errorMsg + " | First Name is empty!";

                    }

                    if(lastName.value.length<=0)
                    {
                       errorMsg = errorMsg + " | Last Name is empty!"
                        valid = false;
                    }

                     if(email.value.length<=0)
                    {
                       errorMsg = errorMsg + " | Email is empty!"
                        valid = false;
                    }

                    if(!isNaN(mobile) ){
                        errorMsg = errorMsg + " | Mobile number is empty!"
                        valid = false;
                    }

                        errorMsg = errorMsg + " ]"

                        if(!valid)
                        {
                            alert(errorMsg);
                        }

                    } catch(err) {
                      console.log( err);
                    }
                return valid;
            };
        </script>
</head>
<body>
    <center>
        <h1>Customers Management</h1>
        <h2>
            <a href="/new">Add New Customer</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/list">List All Customers</a>

        </h2>
    </center>
    <div align="center">
        <c:if test="${customer != null}">
            <form action="update" method="post" onsubmit="return validate();">
        </c:if>
        <c:if test="${customer == null}">
            <form action="insert" method="post" onsubmit="return validate();">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    <c:if test="${customer != null}">
                        Edit Customer
                    </c:if>
                    <c:if test="${customer == null}">
                        Add New Customer
                    </c:if>
                </h2>
            </caption>
                <c:if test="${customer != null}">
                    <input type="hidden" name="id" value="<c:out value='${customer.id}' />" />
                </c:if>
            <tr>
                <th>First Name: </th>
                <td>
                    <input type="text" name="firstName" id="firstName" size="45"
                            value="<c:out value='${customer.firstName}' />"
                        />
                </td>
            </tr>
            <tr>
                <th>Last Name: </th>
                <td>
                    <input type="text" name="lastName" id="lastName" size="45"
                            value="<c:out value='${customer.lastName}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Email: </th>
                <td>
                    <input type="text" name="email" id="email" size="45"
                            value="<c:out value='${customer.email}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Mobile: </th>
                <td>
                    <input type="text" name="mobile" id="mobile" size="10"
                            value="<c:out value='${customer.mobile}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save" />
                </td>
            </tr>
        </table>
        </form>
    </div>
</body>
</html>