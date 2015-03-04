package rd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UsersSQLController {

    @RequestMapping(value = "/users/index" , method = RequestMethod.GET)
    public String setUp(Model model){
        return "admin/users/index";
    }
     @RequestMapping(value = "/users/deletedb" , method = RequestMethod.GET)
    public String setUp1(Model model){
        return "admin/users/deletedb";
    }
     @RequestMapping(value = "/users/display" , method = RequestMethod.GET)
    public String setUp2(Model model){
        return "admin/users/display";
    }
     @RequestMapping(value = "/users/insert" , method = RequestMethod.GET)
    public String setUp3(Model model){
        return "admin/users/insert";
    }
     @RequestMapping(value = "/users/insertdb" , method = RequestMethod.GET)
    public String setUp4(Model model){
        return "admin/users/insertdb";
    }
     @RequestMapping(value = "/users/update" , method = RequestMethod.GET)
    public String setUp5(Model model){
        return "admin/users/update";
    }
         @RequestMapping(value = "/users/updatedb" , method = RequestMethod.GET)
    public String setUp6(Model model){
        return "admin/users/updatedb";
    }
}
