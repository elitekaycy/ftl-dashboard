
<#import "/components/sidebar.ftl" as Sidebar />
<#assign cssPath = "/css/index.css" />

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link type="text/css" rel="stylesheet" href="${cssPath}" />
    <title>ftl-dashboard</title>
  </head>
  <body>
    <div class="layout">
      <@Sidebar.sidebar />
      <div class="info">hello world</div>
    </div>
  </body>
</html>

