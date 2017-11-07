package com.bcd.adf.businesstier.service;

import java.util.ArrayList;

import com.bcd.adf.businesstier.entity.Event;
import com.bcd.adf.businesstier.entity.Visitor;
import com.bcd.adf.exceptions.FERSGenericException;
/**
 * <br/>
 * CLASS DESCRIPTION: <br/>
 * 
 * An interface for defining and enforcing operations needed for the Visitor
 * Service Class. It provides the scope of possible database requests made
 * through the VisitorDAO.<br/>
 * 
 *  @author krishna.kishore
 * 
 */
public interface VisitorFacade {

	public boolean createVisitor(Visitor visitor);

	public Visitor searchVisitor(String username, String password);

	public void RegisterVisitor(Visitor visitor, int eventid, int sessionid);

	public ArrayList<Object[]> showRegisteredEvents(Visitor visitor);

	public int updateVisitorDetails(Visitor visitor);

	public void unregisterEvent(Visitor visitor, int eventid, int eventsessionid);

	public int changePassword(Visitor visitor) throws FERSGenericException;

	public int changeVisitorPassword(Visitor visitor, String oldpassword, String newpassword, String confirmpassword);
}
