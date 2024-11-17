package com.ftl.dashboard.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ftl.dashboard.config.sidebar.Sidebar;

@Controller
@RequestMapping("/")
public class DashboardController {

  @GetMapping
  private ModelAndView dashboard(
      @RequestParam(name = "currentSidebar", required = false) String currentOption,
      @RequestParam(name = "isSidebarOpen", required = false, defaultValue = "true") boolean isOpen) {

    String currentSidebar = currentOption != null ? currentOption : "";
    Sidebar sidebar = new Sidebar(isOpen, currentSidebar);

    Map<String, Object> model = new HashMap<>();

    model.put("sidebar", sidebar);

    return new ModelAndView("index", model);
  }
}
