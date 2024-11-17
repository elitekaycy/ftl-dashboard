package com.ftl.dashboard.config.sidebar;

/**
 * SidebarItem
 */
public class SidebarItem {

  private String title;
  private String icon;
  private String link;

  public SidebarItem(String title, String icon, String link) {
    this.title = title;
    this.icon = icon;
    this.link = link;
  }

  public SidebarItem() {
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getIcon() {
    return icon;
  }

  public void setIcon(String icon) {
    this.icon = icon;
  }

  public String getLink() {
    return link;
  }

  public void setLink(String link) {
    this.link = link;
  }

}
