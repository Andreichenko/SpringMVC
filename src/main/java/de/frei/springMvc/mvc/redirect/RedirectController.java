package de.frei.springMvc.mvc.redirect;

import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;

@Controller
public class RedirectController {
    //redirect to external URL
    public String redirectExample(HttpServletRequest request) {
        return "redirect:" + request.getScheme() +"://jenkins.sytes.net";
    }
}
