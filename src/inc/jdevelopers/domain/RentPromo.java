package inc.jdevelopers.domain;

import javax.jdo.annotations.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.google.appengine.api.datastore.Key;

import java.util.*;


@PersistenceCapable(identityType = IdentityType.APPLICATION)
public class RentPromo {
	
	public RentPromo(){
		address = new RentAddress();
		phones = new String[1];
	}
	public RentPromo(RentAddress address, int roomsAmount,
			String[] phones, String rentType, String comment, String tag) {
		this.address = address;
		this.roomsAmount = roomsAmount;
		this.phones = phones;
		this.rentType = rentType;
		this.comment = comment;
		this.tag = tag;
	}	

	public RentAddress getAddress() {
		return address;
	}

	public void setAddress(RentAddress address) {
		this.address = address;
	}

	public int getRoomsAmount() {
		return roomsAmount;
	}

	public void setRoomsAmount(int roomsAmount) {
		this.roomsAmount = roomsAmount;
	}

	public String[] getPhones() {
		return phones;
	}

	public void setPhones(String[] phones) {
		this.phones = phones;
	}

	public String getRentType() {
		return rentType;
	}

	public void setRentType(String rentType) {
		this.rentType = rentType;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	@PrimaryKey
	@Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
	//идентификатор
	private Key key; 
	
	@Persistent
	//адрес
	private RentAddress address;
	
	@Persistent
	//количество комнат
	private int roomsAmount;
	
	@Persistent
	//контактные телефоны
	private String[] phones;
	
	@Persistent
	//тип аренды
	private String rentType;
	
	@Persistent
	@NotNull
	@Size(min=5,message="ошибка дружище:(")
	//примечание
	private String comment;
	
	@Persistent
	//метка
	private String tag;

}
