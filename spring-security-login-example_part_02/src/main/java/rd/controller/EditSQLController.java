package rd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EditSQLController {

    @RequestMapping(value = "/editSQL" , method = RequestMethod.GET)
    public String setUp(Model model){
        return "admin/edit-mysql";
    }
}
