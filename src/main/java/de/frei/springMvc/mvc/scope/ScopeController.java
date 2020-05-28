package de.frei.springMvc.mvc.scope;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class ScopeController {

    @RequestMapping(value = "/scopeSession", method = RequestMethod.GET)
    public ModelAndView scopeExample(HttpSession session) {
        System.out.println("ScopeController scopeSession() is called");
        session.setMaxInactiveInterval(3600);
        session.setAttribute("sessionObject", "Value is session object");
        return new ModelAndView("/scope/scope");
    }

    @RequestMapping(value = "/invalidateSession", method=RequestMethod.GET)
    public ModelAndView invalidateSession(HttpSession session) {
        System.out.println("ScopeController invalidate is called");
        session.invalidate();
        return new ModelAndView("/scope/scope");
    }

}
