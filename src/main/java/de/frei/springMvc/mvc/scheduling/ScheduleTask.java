package de.frei.springMvc.mvc.scheduling;


import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

import java.util.Date;

@Controller
public class ScheduleTask {

    @Scheduled(fixedDelay = 10000)
    public void fixedDelaySchedule() {
        System.out.println("fixedDelaySchedule every 10 seconds" + new Date());
    }
}
