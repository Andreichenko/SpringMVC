package de.frei.springMvc.mvc.excelpdf;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * ExcelPdfController - the main controller for coloboration between model and view
 */

@Controller
public class ExcelPDFController {

    @RequestMapping(value = "/excel", method= RequestMethod.GET)
    public ModelAndView excel() {
        System.out.println("ExcelPDFController excel is called");

        List<Cat> cats = createCats();

        //excelDocument - look excel-pdf-config.xml
        //excelDocument as view
        return new ModelAndView("excelDocument", "modelObject", cats);
    }

    private List<Cat> createCats() {
        List<Cat> cats = new ArrayList<>();
        for (int i = 0; i <10; i++) {
            Cat cat = new Cat("cat" + i, "color" + i, i);
            cats.add(cat);
        }
        return cats;
    }
}
