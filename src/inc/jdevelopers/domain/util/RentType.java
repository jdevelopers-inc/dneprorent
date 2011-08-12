package inc.jdevelopers.domain.util;

import java.util.*;

public class RentType {
	private static final List<String> rentTypes = new ArrayList<String>( Arrays.asList("Посуточная аренда",
		                                                   "Длительная аренда") );
	
    public static List<String> getRentTypes(){
    	return rentTypes;
    }
}
