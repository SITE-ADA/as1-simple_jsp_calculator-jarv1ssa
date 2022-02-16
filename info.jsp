<%
  String host = request.getHeader("host");
  String remoteHost = request.getRemoteHost();
  String userAgent = request.getHeader("user-agent"); 
%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/base.css" />
    <link rel="stylesheet" href="css/link.css">
    <link rel="stylesheet" href="css/info.css" />
    <title>Simple JSP Calculator</title>
  </head>
  <body>
    <div class="info">
      <div>
        <p class="title">Host</p>
        <p class="subtitle"><%=host%></p>
      </div>

      <div>
        <p class="title">Remote host</p>
        <p class="subtitle"><%=remoteHost%></p>
      </div>

      <div>
        <p class="title">User agent</p>
        <p class="subtitle"><%=userAgent%></p>
      </div>
    </div>

    <a href="index.jsp" class="link">Go home</a>
  </body>
</html>
