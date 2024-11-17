<#import "./sidebarItem.ftl" as SidebarItem />

<#macro sidebar sidebarData>

  <#assign sidebarItems = sidebarData.sidebarOptions />
  <#assign activeCurrentOption = sidebarData.sidebarCurrentOption />
  <#assign superLink = "?currentSidebar=${activeCurrentOption}&isSidebarOpen=${(!sidebarData.isOpen)?c}" />

  <div class="sidebar ${sidebarData.isOpen?then("", "sidebarClose")}">
    <div class="sidebar-header">
     <#if sidebarData.isOpen?string("true", "false") == "true">
      <div class="sidebar-header-split">
        <div class="sidebar-header-main">
          <div class="sidebar-header-logo">
              <i class="fas fa-box fa-sm"></i>
          </div>
          <div class="sidebar-header-text">
            <span class="sidebar-header-text-main">ftl-dashboard</span>
            <span class="sidebar-header-text-sub">freemarker-sass</span>
          </div>
        </div>
        <a 
        href="${superLink}"
        class="sidebar-header-side">
           <i class="fas fa-layer-group fa-lg"></i>
        </a>
      </div>
      <#else>
        <a 
        href="${superLink}"
        class="sidebar-header-side">
           <i class="fas fa-layer-group fa-2x"></i>
        </a>
      </#if>
      <div class="sidebar-divider"></div>

      <div class="sidebar-menu">
        <h1 class="sidebar-menu-title">MENU</h1>
        <ul>
          <#list sidebarItems as item>
            <@SidebarItem.sidebarItem
                icon=item.icon
                title=item.title
                link=item.link
                activeCurrentOption=activeCurrentOption
                isOpen=sidebarData.isOpen
                />
          </#list>
        </ul>
      </div>
    </div>
  </div>
</#macro>

