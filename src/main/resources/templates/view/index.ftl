
<#import "/components/sidebar.ftl" as Sidebar />
<#assign cssPath = "/css/index.css" />

<#assign sidebarData = {
  "isOpen": sidebar.isOpen,
  "sidebarOptions": sidebar.sidebarOptions,
  "sidebarCurrentOption": sidebar.currentSidebarOption
}/>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link type="text/css" rel="stylesheet" href="${cssPath}" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=transition_dissolve" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&icon_names=dock_to_right" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <title>ftl-dashboard</title>
  </head>
  <body>
    <div class="layout">
      <@Sidebar.sidebar sidebarData=sidebarData />
     <!-- <div class="info">hello world</div> -->
    </div>
  </body>
</html>

