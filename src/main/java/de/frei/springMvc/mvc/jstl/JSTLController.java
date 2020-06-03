package de.frei.springMvc.mvc.jstl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class JSTLController {

    @Autowired
    private ORMService ormService;
}
