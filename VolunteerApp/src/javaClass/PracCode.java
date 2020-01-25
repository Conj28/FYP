package javaClass;

	public class PracCode {
    public static void main(String[] args) throws Exception {
      
        //https://howtodoinjava.com/java/date-time/java8-datetimeformatter-example/
         
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm");
//        
//        
//        LocalTime localTime = LocalTime.now();
//        
//        //Get formatted String
//        String localTimeString = formatter.format(localTime);
//       
//      System.out.println(localTimeString); 
    	
    	
    	//try2 
    	
    	//https://stackoverflow.com/questions/9015536/java-how-to-add-10-mins-in-my-time
//    	 String startTime = "14:00";
//    	 String endTime = "18:00";
//    	 
//    	 
//    	 SimpleDateFormat df = new SimpleDateFormat("HH:mm");
//    	 Date st = df.parse(startTime); 
//    	 Date et= df.parse(endTime);
//    	 
//    	 
//    	 long elapsed = et.getTime() - st.getTime();
//    	 System.out.println(elapsed);
    	
    	//https://stackoverflow.com/questions/9015536/java-how-to-add-10-mins-in-my-time
    	//https://stackoverflow.com/questions/4927856/how-to-calculate-time-difference-in-java
    	
    	
//    	
//    	 	String startTime = "10:00";
//    	    String endTime = "17:00";
//    	    
//    	    
//    	    
//    	    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
//    	    Date d1 = sdf.parse(startTime);
//    	    Date d2 = sdf.parse(endTime);
//    	    long elapsed = d2.getTime() - d1.getTime();
//    	    //1800 seconds in half hour 
//    	    //3600 seconds in hour
//    	    long halfHours = (elapsed/1000)/1800;
//    	    
//    	    
//    	    Calendar cal1 = Calendar.getInstance();
//        	cal1.setTime(d1);
//    	    
//        	List<String> timeList = new ArrayList<>();	
//        	
//        	
//        	//Event eventTime = new Event();
//    	    
//    	    for(int i = 0; i < halfHours; i++) {;
//    	    	
//    	    timeList.add(sdf.format(cal1.getTime()));
//    	    	cal1.add(Calendar.MINUTE, 30);
//    	    	//System.out.println(sdf.format(cal1.getTime()));
//    	    	
//    	    	
//    	    }
//    	    
//    	    System.out.println(timeList);
//    	    
    	 
    	    
    	    
    	//Email email = new Email();
		//email.emailConfirmSignUp("116376836@umail.ucc.ie", "Cork Place", "12:00", "14:30");
    	    
    	    
    	    
//    	 Calendar cal1 = Calendar.getInstance();
//    	 cal1.setTime(st);
//    	 
//    	 
//    	 
//    	 while (st.getTime() <= et.getTime()) {
//    		    cal1.add(Calendar.MINUTE, 30);
//    		    
//    		    System.out.println(cal1);
//    		}
    	 
    	 
//    	 cal.add(Calendar.MINUTE, 30);
//    	 String newTime = df.format(cal.getTime());
//    	 System.out.println(newTime);
    	
    }       
}


