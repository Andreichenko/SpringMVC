package de.frei.springMvc.mvc.security;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;

@Controller
public class SecurityController {

    //JSR-250 Security
    @RolesAllowed(value={"ROLE_SUPER_USER", "ROLE_ADMIN"})
    @RequestMapping(value = "/adminOrSuperUserCanCall", method = RequestMethod.GET)
    public ModelAndView adminOrSuperUserCanCall() {
        System.out.println("SecurityController adminOrSuperUserCanCall() is called");
        return new ModelAndView("/security/admin");
    }
}
