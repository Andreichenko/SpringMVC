package de.frei.springMvc.mvc.bean;

import java.io.Serializable;

public class BLog implements Serializable {

    private static final long serialVersionUID = 1L;
    private int IDLOG;
    private String LOGSTRING;

    public BLog() {
    }

    public BLog(int IDLOG, String LOGSTRING) {
        this.IDLOG = IDLOG;
        this.LOGSTRING = LOGSTRING;
    }

    public int getIDLOG() {
        return IDLOG;
    }

    public void setIDLOG(int IDLOG) {
        this.IDLOG = IDLOG;
    }

    public String getLOGSTRING() {
        return LOGSTRING;
    }

    public void setLOGSTRING(String LOGSTRING) {
        this.LOGSTRING = LOGSTRING;
    }
}
