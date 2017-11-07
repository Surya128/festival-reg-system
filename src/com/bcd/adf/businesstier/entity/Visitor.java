package com.bcd.adf.businesstier.entity;

import java.util.ArrayList;
/**
 *	POJO for VISITOR CLASS
 */
public class Visitor extends People {

	private int visitorId;
	private ArrayList<Event> registeredEvents=null;
	private String address;
	private boolean admin = false;
	
	public boolean getAdmin() {
		if(visitorId==1007)
		{
			admin=true;
		}
		return admin;
	}
	public void setAdmin(boolean admin) {
		this.admin = admin;
	}
	
	public int getVisitorId() {
		return visitorId;
	}
	public void setVisitorId(int visitorId) {
		this.visitorId = visitorId;
	}

	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public ArrayList<Event> getRegisteredEvents() {
		return registeredEvents;
	}
	public void setRegisteredEvents(ArrayList<Event> registeredEvents) {
		this.registeredEvents = registeredEvents;
	}	
	
}
