<%@ page errorPage="errorPage.jsp" %>
<%@ page import = "controllers.Calculator" %>

<%
  String p1 = request.getParameter("p1");
  String p2 = request.getParameter("p2");
  String op = request.getParameter("op");

  int firstOperand, secondOperand;

  try {
    firstOperand = Integer.parseInt(p1);
    secondOperand = Integer.parseInt(p2);
  } catch (Exception e) {
    firstOperand = 0;
    secondOperand = 0;
  }

  if (op == null) {
    op = "add";
  }

  Calculator calculator = new Calculator(firstOperand, secondOperand, op);
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/style.css" />
    <title>Simple JSP Calculator</title>
  </head>
  <body>
    <form action="index.jsp" method="get" class="form">
      <div class="form-control input">
        <input
          type="number"
          name="p1"
          id="p1"
          placeholder="First operand"
          required
        />
      </div>

      <div class="form-control input">
        <input
          type="number"
          name="p2"
          id="p2"
          placeholder="Second operand"
          required
        />
      </div>

      <div class="form-control select">
        <select name="op" id="op" required>
          <option value="add">+</option>
          <option value="sub">-</option>
          <option value="mul">*</option>
          <option value="div">/</option>
        </select>
      </div>

      <div class="form-control button">
        <button type="submit">Calculate</button>
      </div>

      <div class="result">
        Result: 
        <%
          out.print(calculator.compute());
        %>
      </div>
    </form>

    <a href="info.jsp" class="link">Client info</a>

    <script src="js/main.js"></script>
  </body>
</html>
