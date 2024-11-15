package com.ftl.dashboard.config.sidebar;

public class Sidebar {
  public boolean isOpen = false;

  Sidebar() {
  };

  public void toggleSidebar() {
    this.isOpen = !this.isOpen;
  }
}
