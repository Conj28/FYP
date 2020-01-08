package javaClass;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class TimeCalc {
    public List<String> calcStartTimes(String startTime, String endTime) throws ParseException {
     
    	//https://stackoverflow.com/questions/9015536/java-how-to-add-10-mins-in-my-time
    	//https://stackoverflow.com/questions/4927856/how-to-calculate-time-difference-in-java
    	    
    	    
    	    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
    	    Date d1 = sdf.parse(startTime);
    	    Date d2 = sdf.parse(endTime);
    	    long elapsed = d2.getTime() - d1.getTime();
    	    //1800 seconds in half hour 
    	    //3600 seconds in hour
    	    long halfHours = (elapsed/1000)/1800;
    	    
    	    
    	    Calendar cal1 = Calendar.getInstance();
        	cal1.setTime(d1);
    	    
        	List<String> timeList = new ArrayList<>();	
        	
        	//Event eventTime = new Event();
    	    
    	    for(int i = 0; i < halfHours; i++) {
    	    	
    	    timeList.add(sdf.format(cal1.getTime()));
    	    	cal1.add(Calendar.MINUTE, 30);
    	    	//System.out.println(sdf.format(cal1.getTime()));
    	    }
    	    
    	    //System.out.println(timeList);
    	    
    	    return timeList;
    	
    }   
    
    public List<String> calcEndTimes(String startTime, String endTime) throws ParseException {
        
    	//https://stackoverflow.com/questions/9015536/java-how-to-add-10-mins-in-my-time
    	//https://stackoverflow.com/questions/4927856/how-to-calculate-time-difference-in-java
    	    
    	    
    	    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
    	    Date d1 = sdf.parse(startTime);
    	    Date d2 = sdf.parse(endTime);
    	    long elapsed = d2.getTime() - d1.getTime();
    	    //1800 seconds in half hour 
    	    //3600 seconds in hour
    	    long halfHours = (elapsed/1000)/1800;
    	    
    	    
    	    Calendar cal1 = Calendar.getInstance();
        	cal1.setTime(d1);
    	    
        	List<String> timeList = new ArrayList<>();	
        	
        	//Event eventTime = new Event();
    	    
    	    for(int i = 0; i < halfHours; i++) {
    	    	cal1.add(Calendar.MINUTE, 30);
    	    timeList.add(sdf.format(cal1.getTime()));
    	    	
    	    	//System.out.println(sdf.format(cal1.getTime()));
    	    }
    	    
    	    //System.out.println(timeList);
    	  
    	    
    	    return timeList;
    	
    }   
    
    
    
    
    
}


