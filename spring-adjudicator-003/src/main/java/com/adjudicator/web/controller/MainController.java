package com.adjudicator.web.controller;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

    @RequestMapping(value = {"/", "/welcome**"}, method = RequestMethod.GET)
    public ModelAndView defaultPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator");
        model.addObject("message", "Any user and anonymous can see this.");
        model.setViewName("welcome");
        return model;

    }

    @RequestMapping(value = "/admin**", method = RequestMethod.GET)
    public ModelAndView adminPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator MySQL Login Form");
        model.addObject("message", "This page is accessible by ROLE_ADMIN only!");
        model.setViewName("admin");

        return model;

    }

    @RequestMapping(value = {"/admin/userinfo**"}, method = RequestMethod.GET)
    public ModelAndView indexPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - MySQL Access Page");
        model.addObject("message", "This is the MySQL link page!");
        model.setViewName("admin/userinfo");
        return model;

    }

    @RequestMapping(value = {"/admin/deletedb**"}, method = RequestMethod.GET)
    public ModelAndView deletePage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Delete Page");
        model.addObject("message", "This is the delete page!");
        model.setViewName("admin/deletedb");
        return model;

    }

    @RequestMapping(value = {"/admin/display**"}, method = RequestMethod.GET)
    public ModelAndView dsiplayPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - MySQL Access Page");
        model.addObject("message", "This is the display page!");
        model.setViewName("admin/display");
        return model;

    }

    @RequestMapping(value = {"/admin/insert**"}, method = RequestMethod.GET)
    public ModelAndView insertPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - MySQL Access Page");
        model.addObject("message", "This is the insert page!");
        model.setViewName("admin/insert");
        return model;

    }

    @RequestMapping(value = {"/admin/insertdb**"}, method = RequestMethod.GET)
    public ModelAndView insertdbPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - MySQL Access Pagen");
        model.addObject("message", "This is the insertdb page!");
        model.setViewName("admin/insertdb");
        return model;

    }

    @RequestMapping(value = {"/admin/update**"}, method = RequestMethod.GET)
    public ModelAndView updatePage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - MySQL Access Page");
        model.addObject("message", "This is the update page!");
        model.setViewName("admin/update");
        return model;

    }

    @RequestMapping(value = {"/admin/updatedb**"}, method = RequestMethod.GET)
    public ModelAndView updatedbPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - MySQL Access Page");
        model.addObject("message", "This is the updatedb page!");
        model.setViewName("admin/updatedb");
        return model;

    }
    
    @RequestMapping(value = {"/super/superuserhome**"}, method = RequestMethod.GET)
    public ModelAndView superuserHomePage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - User Home Access Page");
        model.addObject("message", "ONLY ROLE_ADMIN and ROLE_SUPER CAN SEE THIS");
        model.setViewName("super/superuserhome");
        return model;

    }
    
    @RequestMapping(value = {"/super/superuserdisplay**"}, method = RequestMethod.GET)
    public ModelAndView superuserDisplay() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - User Home Access Page");
        model.addObject("message", "ONLY ROLE_ADMIN and ROLE_SUPER CAN SEE THIS");
        model.setViewName("super/superuserdisplay");
        return model;

    }
    
    @RequestMapping(value = {"/super/superuserupdateinfo**"}, method = RequestMethod.GET)
    public ModelAndView superuserUpdateInfo() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - User Home Access Page");
        model.addObject("message", "ONLY ROLE_ADMIN and ROLE_SUPER CAN SEE THIS");
        model.setViewName("super/superuserupdate");
        return model;

    }
    
    @RequestMapping(value = {"/super/superuserupdatedb**"}, method = RequestMethod.GET)
    public ModelAndView superuserUpdateDb() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - User Home Access Page");
        model.addObject("message", "ONLY ROLE_ADMIN and ROLE_SUPER CAN SEE THIS");
        model.setViewName("super/superuserupdatedb");
        return model;

    }
    
    @RequestMapping(value = {"/user/userhome**"}, method = RequestMethod.GET)
    public ModelAndView userHomePage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - User Home Access Page");
        model.addObject("message", "ONLY ROLE_ADMIN, ROLE_SUPER, AND ROLE_USER CAN SEE THIS");
        model.setViewName("user/userhome");
        return model;

    }
    
    @RequestMapping(value = {"/user/userdisplay**"}, method = RequestMethod.GET)
    public ModelAndView userDisplayPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - User Home Access Page");
        model.addObject("message", "ONLY ROLE_ADMIN, ROLE_SUPER, and ROLE_USER CAN SEE THIS");
        model.setViewName("user/userdisplay");
        return model;

    }

    @RequestMapping(value = {"/user/userupdateinfo**"}, method = RequestMethod.GET)
    public ModelAndView userUpdatePage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - User Home Access Page");
        model.addObject("message", "ONLY ROLE_ADMIN, ROLE_SUPER, and ROLE_USER CAN SEE THIS");
        model.setViewName("user/userupdate");
        return model;

    }
    
    @RequestMapping(value = {"/user/userupdatedb**"}, method = RequestMethod.GET)
    public ModelAndView userUpdateDBPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Adjudicator - User Home Access Page");
        model.addObject("message", "ONLY ROLE_ADMIN, ROLE_SUPER, and ROLE_USER CAN SEE THIS");
        model.setViewName("user/userupdatedb");
        return model;

    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Any user and anonymous can see this.");
        model.addObject("message", "This section is for authorized users only. Please sign-in to view this section.");
        if (error != null) {
            model.addObject("error", "Invalid username and password!");
        }

        if (logout != null) {
            model.addObject("msg", "You've been logged out successfully.");
        }
        model.setViewName("login");

        return model;

    }

    //for 403 access denied page
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied() {

        ModelAndView model = new ModelAndView();

        //check if user is logged in
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            System.out.println(userDetail);

            model.addObject("username", userDetail.getUsername());

        }

        model.setViewName("403");
        return model;

    }

    //for 404 access denied page
    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public ModelAndView accesssNotAvailable() {

        ModelAndView model = new ModelAndView();

        //check if user is logged in
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            System.out.println(userDetail);

            model.addObject("username", userDetail.getUsername());

        }

        model.setViewName("404");
        return model;

    }

}
