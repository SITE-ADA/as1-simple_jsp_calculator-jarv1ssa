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
      <div class="form-control">
        <input
          type="number"
          name="firstOperand"
          id="firstOperand"
          placeholder="First operand"
        />
      </div>

      <div class="form-control">
        <input
          type="number"
          name="secondOperand"
          id="secondOperand"
          placeholder="Second operand"
        />
      </div>

      <button type="submit">Calculate</button>
    </form>
  </body>
</html>
