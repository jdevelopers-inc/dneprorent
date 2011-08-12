package inc.jdevelopers.service;

import java.util.List;
import inc.jdevelopers.domain.RentPromo;

public interface RentPromoService {
   
	public int countPromos();
   
    public void createPromo(RentPromo rentPromo);
    
    public  List<RentPromo> listAllPromos();
   
}
