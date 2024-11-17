package com.ftl.dashboard.config.sidebar;

import java.util.List;

public class Sidebar {
  private boolean isOpen = false;
  private String currentSidebarOption = "";
  private List<SidebarItem> sidebarOptions = List.of(
      new SidebarItem("Dashboard", "fa-star-half-alt", ""),
      new SidebarItem("Report", "fa-bug", "report"),
      new SidebarItem("Analytics", "fa-chart-line", "analytics"));

  public Sidebar(boolean isOpen, String currentSidebarOption) {
    this.isOpen = isOpen;
    this.currentSidebarOption = currentSidebarOption;
  };

  public void toggleSidebar() {
    this.isOpen = !this.isOpen;
  }

  public void setIsOpen(boolean isOpen) {
    this.isOpen = isOpen;
  }

  public boolean getIsOpen() {
    return this.isOpen;
  }

  public String getCurrentSidebarOption() {
    return currentSidebarOption;
  }

  public void setCurrentSidebarOption(String currentSidebarOption) {
    this.currentSidebarOption = currentSidebarOption;
  }

  public List<SidebarItem> getSidebarOptions() {
    return sidebarOptions;
  }

  public void setSidebarOptions(List<SidebarItem> sidebarOptions) {
    this.sidebarOptions = sidebarOptions;
  }

}
