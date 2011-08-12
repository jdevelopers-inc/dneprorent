package inc.jdevelopers.service;

import java.util.List;

import inc.jdevelopers.domain.RentPromo;
import inc.jdevelopers.persistance.PMF;
import javax.jdo.PersistenceManager;

public class RentPromoServiceImpl implements RentPromoService {

	private PersistenceManager pm;
	
	public RentPromoServiceImpl(){
		pm = PMF.get().getPersistenceManager();
	}
	
	@SuppressWarnings("unchecked")
	public int countPromos() {
		if( pm==null || pm.isClosed() ) 
			pm = PMF.get().getPersistenceManager();	
        String query = "select from "+RentPromo.class.getName();
		List<RentPromo> listRentPromo = (List<RentPromo>)pm.newQuery(query).execute();
		return listRentPromo.size();
	}

	public void createPromo(RentPromo rentPromo) {
		if( pm==null || pm.isClosed() ) 
			pm = PMF.get().getPersistenceManager();	
		pm.makePersistent(rentPromo);
	}
	
	public List<RentPromo> listAllPromos(){
		if( pm==null || pm.isClosed() ) 
			pm = PMF.get().getPersistenceManager();	
		 String query = "select from "+RentPromo.class.getName();
         return (List<RentPromo>)pm.newQuery(query).execute();
	}

}
