package de.frei.springMvc.mvc.jdbc;

import de.frei.springMvc.mvc.bean.DBLog;
import de.frei.springMvc.mvc.bean.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class JDBCController {

    @Autowired
    JDBCExample jdbcExample;

    @RequestMapping(value = "/jdbcQueryAllUsers", method = RequestMethod.GET)
    public ModelAndView jdbcSelectAllUsers() {
        System.out.println("JDBCController jdbcSelectAllUsers() is called");
        List<User> users =  jdbcExample.queryAllUsers();
        return new ModelAndView("/jdbc/jdbc", "resultObject", users);
    }

    @RequestMapping(value = "/jdbcInsert/logstring/{logstring}", method=RequestMethod.GET)
    public ModelAndView jdbcInsert(@PathVariable(value="logstring") String logstring) {
        System.out.println("JDBCController jdbcInsert is called");
        DBLog dblog = new DBLog();
        dblog.setLOGSTRING(logstring);
        boolean result = jdbcExample.insertLog(dblog);
        return new ModelAndView("/jdbc/jdbc", "resultObject", result);
    }

    @RequestMapping(value = "/jdbcSelectLogs", method=RequestMethod.GET)
    public ModelAndView jdbcSelect() {
        System.out.println("JDBCController jdbcSelect is called");
        List<DBLog> dbLogs =  jdbcExample.queryAllLogs();
        return new ModelAndView("/jdbc/jdbc", "resultObject", dbLogs);

    }

    @RequestMapping(value = "/jdbcDelete/user/{iduser}", method=RequestMethod.GET)
    public ModelAndView jdbcDelete( @PathVariable(value="iduser") int iduser) {
        System.out.println("JDBCController jdbcDelete is called");
        boolean result = jdbcExample.deleteUSER(iduser);
        return new ModelAndView("/jdbc/jdbc", "resultObject", result);

    }





}
