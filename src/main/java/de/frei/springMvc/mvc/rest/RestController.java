package de.frei.springMvc.mvc.rest;


import de.frei.springMvc.mvc.rest.model.DBLogJSON;
import de.frei.springMvc.mvc.rest.model.DBLogXML;
import de.frei.springMvc.mvc.rest.model.DBLogsJSON;
import de.frei.springMvc.mvc.rest.model.DBLogsXML;
import de.frei.springMvc.mvc.service.DBLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * controller descriptions
 */

@Controller
public class RestController {

    @Autowired
    private DBLogService dbLogService;

    @RequestMapping(value = "/rest/getAllDBLogsXML", method = RequestMethod.GET, produces = "application/xml")
    public @ResponseBody
    DBLogsXML getAllDBLogsXML() {
        List<DBLogXML> dbLogsList = null;
        try {
            dbLogsList = dbLogService.queryAllDBLogsXML();  //JPA (Hibernate)
//            dbLogsList = dbLogService.queryAllDBLogsJDBCExampleXML(); //JDBC
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(dbLogsList);
        DBLogsXML dbLogsXML = new DBLogsXML();
        dbLogsXML.setLogList(dbLogsList);
        return dbLogsXML;
    }

    /** look to mvc-config.xml for <mvc:message-converters>. It can produce 'pretty' json response. */
    @RequestMapping(value = "/rest/getAllDBLogsJSON", method = RequestMethod.GET, produces = "application/json")
    public @ResponseBody
    DBLogsJSON getAllDBLogsJSON() {
        List<DBLogJSON> dbLogsJSONList = null;
        try {
 //           dbLogsJSONList = dbLogService.queryAllDBLogsXML();  //JPA (Hibernate)
//            dbLogsJSONList = dbLogService.queryAllDBLogsJDBCExampleJSON(); //JDBC
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(dbLogsJSONList);
        DBLogsJSON dbLogsJSON = new DBLogsJSON();
        dbLogsJSON.setLogList(dbLogsJSONList);
        return dbLogsJSON;
    }


}
