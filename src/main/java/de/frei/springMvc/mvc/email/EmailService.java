package de.frei.springMvc.mvc.email;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;

import javax.mail.internet.MimeMessage;
import java.util.Map;

@Service
public class EmailService {

    /*Email From*/
    public static final String FROM = "from";
    /*Email To*/
    public static final String TO = "to";
    /*Email Subject*/
    public static final String SUBJECT = "subject";
    /*Email BCC*/
    public static final String BCC_LIST = "bccList";
    /*Email CCC*/
    public static final String CCC_LIST = "ccList";

    @Autowired
    private JavaMailSender mailSender; //see application-context.xml

    @Autowired
    private VelocityEngine velocityEngine; //see application-context.xml



}
