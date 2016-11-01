package form;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ELDateFormat {
    private static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd(E) HH:mm:ss");
    
    public static String toFormat(Date date) {
        return df.format(date);
    }
}
