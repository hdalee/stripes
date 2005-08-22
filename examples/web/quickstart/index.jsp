<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes.tld"%>

<html>
  <head>
      <title>My First Stripe</title>
      <style type="text/css">
          input.error { background-color: yellow; }
      </style>
  </head>
  <body>
    <h1>Stripes Calculator</h1>

    Hi, I'm the Stripes Calculator. I can only do addition. Maybe, some day, a nice programmer
    will come along and teach me how to do other things?

    <stripes:form action="/quickstart/Calculator.action">
        <stripes:errors/>
        <table>
            <tr>
                <td>Number 1:</td>
                <td><stripes:text name="numberOne"/></td>
            </tr>
            <tr>
                <td>Number 2:</td>
                <td><stripes:text name="numberTwo"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <stripes:submit name="Addition" value="Add"/>
                    <stripes:submit name="Division" value="Divide"/>
                </td>
            </tr>
            <tr>
                <td>Result:</td>
                <td>${actionBean.result}</td>
            </tr>
        </table>
    </stripes:form>
  </body>
</html>