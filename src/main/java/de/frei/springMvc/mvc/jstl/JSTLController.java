package de.frei.springMvc.mvc.jstl;

import de.frei.springMvc.mvc.orm.ORMService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class JSTLController {

    @Autowired
    private ORMService ormService;

    @RequestMapping(value = "/jstlReturnUsers", method = RequestMethod.GET)
    public ModelAndView listUsers() {
        return new ModelAndView("jstl/jstl", "resultObjectList", ormService.queryFindAllUsersJPA());
    }
}
