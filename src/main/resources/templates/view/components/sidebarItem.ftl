<#macro sidebarItem icon title link activeCurrentOption isOpen>

  <#assign isActive = (link == activeCurrentOption) />
  <#assign superLink = "?currentSidebar=${link}" + "&isSidebarOpen=${isOpen?string}" />
 
  <li class="sidebar-item">
    <a href="${superLink}" class="sidebar-link <#if isActive>sidebar-active</#if>">
      <i class="fas ${icon}"></i>
      <#if isOpen>
        <span>${title}</span>
      </#if>
    </a>
  </li>
</#macro>
