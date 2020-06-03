package de.frei.springMvc.mvc.orm;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class ORMController {

    @Autowired
    private ORMService ormService;
}
