package de.frei.springMvc.mvc.service;


import de.frei.springMvc.mvc.rest.model.DBLogXML;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Service
public class DBLogService {

    @PersistenceContext
    private EntityManager entityManager;

    /* or you can use JDBCTemplate instead JPA */
    private JdbcTemplate jdbcTemplate;
    /* if use JDBCTemplate */
    @Autowired
    public DBLogService (DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    //JPA XML example
    public List<DBLogXML> queryAllDBLogsXML() {
        System.out.println("DBLogService queryAllDBLogsXML() is called");
        /*important! We use entity class DBLogXML instead table name LOG (not 'from LOG')*/
        return entityManager.createQuery("from DBLogXML", DBLogXML.class).getResultList();
    }


}
