package inc.jdevelopers.domain;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.IdentityType;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.validation.constraints.Pattern;

@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class RentAddress {
    public RentAddress() {
    	;
    }
	public RentAddress(String street, String city, String country, int index,
			String buildingNumb, String roomNumb) {
		this.street = street;
		this.index = index;
		this.buildingNumb = buildingNumb;
		this.roomNumb = roomNumb;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getBuildingNumb() {
		return buildingNumb;
	}
	public void setBuildingNumb(String buildingNumb) {
		this.buildingNumb = buildingNumb;
	}
	public String getRoomNumb() {
		return roomNumb;
	}
	public void setRoomNumb(String roomNumb) {
		this.roomNumb = roomNumb;
	}
	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	//идентификатор
	private Long id; 
	@Persistent
	private String street;                  //улица
	@Persistent
	@NotNull
	@Size(min=5)
    private int index;                      //почтовый индекс
	@Persistent
    private String buildingNumb;            //номер дома
	@Persistent
    private String roomNumb;                //номер квартиры
}
