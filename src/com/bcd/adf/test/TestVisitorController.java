package com.bcd.adf.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.web.servlet.ModelAndView;

import com.bcd.adf.businesstier.controller.VisitorController;
import com.bcd.adf.businesstier.dao.VisitorDAO;
import com.bcd.adf.businesstier.entity.Visitor;

/**
 * Junit test case to test the class VisitorController
 * 
 */
public class TestVisitorController {

	private MockHttpServletRequest request;
	private MockHttpServletResponse response;
	private MockHttpSession session;
	private ModelAndView modelAndView;
	private VisitorController controller;
	private VisitorDAO visitorDao;

	/**
	 * Set up initial methods required before execution of every method
	 * 
	 * @throws Exception
	 */
	@Before
	public void setUp() throws Exception {
		modelAndView = new ModelAndView();
		controller = new VisitorController();
		session = new MockHttpSession();
		response = new MockHttpServletResponse();
		visitorDao = new VisitorDAO();
	}

	/**
	 * Deallocate objects after execution of every method
	 * 
	 * @throws Exception
	 */
	@After
	public void tearDown() throws Exception {
		modelAndView = null;
		controller = null;
		session = null;
		response = null;
		visitorDao = null;
	}

	/**
	 * Positive test case to test the method newVisitor
	 */
	@Test
	public void testNewVisitor_Positive() {
		try {
			request = new MockHttpServletRequest("GET", "/newVistor.htm");

			request.setParameter("USERNAME", "ylee");
			request.setParameter("PASSWORD", "password");
			request.setParameter("FIRSTNAME", "TestVFname");
			request.setParameter("LASTNAME", "lname");
			request.setParameter("EMAIL", "mail");
			request.setParameter("PHONENO", "11111");
			request.setParameter("ADDRESS", "testAddress");
			modelAndView = controller.newVisitor(request, response);
		} catch (Exception exception) {
			fail("Exception");
		}
		assertEquals("/registration.jsp", modelAndView.getViewName());
	}

	/**
	 * Negative test case to test the method newVisitor
	 */
	@Test
	public void testNewVisitor_Negative() {
		try {
			modelAndView = controller.newVisitor(null, response);
		} catch (Exception exception) {
			assertEquals(
					"Error in Transaction, Please re-Try. for more information check Logfile in C:\\FERSLOG folder",
					exception.getMessage());
		}
		assertEquals(null, modelAndView.getViewName());
	}

	/**
	 * Positive test case to test the method searchVisitor
	 */
	@Test
	public void testSearchVisitor_Positive() {
		try {
			request = new MockHttpServletRequest("GET", "/searchVisitor.htm");
			request.setParameter("USERNAME", "ylee");
			request.setParameter("PASSWORD", "password");
			modelAndView = controller.searchVisitor(request, response);
		} catch (Exception exception) {
			fail("Exception");
		}
		assertEquals("/visitormain.jsp", modelAndView.getViewName());
	}

	/**
	 * Negative test case of invalid user for method searchVisitor
	 */
	@Test
	public void testSearchVisitor_Negative_InvalidUser() {
		try {
			request = new MockHttpServletRequest("GET", "/searchVisitor.htm");
			request.setParameter("USERNAME", "ylee1");
			request.setParameter("PASSWORD", "password");
			modelAndView = controller.searchVisitor(request, response);
		} catch (Exception exception) {
			fail("Exception");
		}
		assertEquals("/index.jsp", modelAndView.getViewName());
	}

	/**
	 * Negative test case for method searchVisitor
	 */
	@Test
	public void testSearchVisitor_Negative() {
		try {
			modelAndView = controller.searchVisitor(null, response);
		} catch (Exception exception) {
			assertEquals(
					"Error in Transaction, Please re-Try. for more information check Logfile in C:\\FERSLOG folder",
					exception.getMessage());
		}
		assertEquals(null, modelAndView.getViewName());
	}

	/**
	 * Positive test case for method registerVisitor
	 */
	@Test
	public void testRegisterVisitor_Positive() {
		try {
			request = new MockHttpServletRequest("GET", "/eventreg.htm");
			Visitor visitor = visitorDao.searchUser("ylee", "password");
			session.setAttribute("VISITOR", visitor);
			request.setParameter("eventId", "1001");
			request.setParameter("sessionId", "10001");
			request.setSession(session);
			request.setParameter("USERNAME", "ylee");
			request.setParameter("PASSWORD", "password");
			modelAndView = controller.registerVisitor(request, response);
		} catch (Exception exception) {
			fail("Exception");
		}
		assertEquals("/visitormain.jsp", modelAndView.getViewName());
	}	

	/**
	 * Negative test case for method registerVisitor
	 */
	@Test
	public void testRegisterVisitor_Negative() {
		try {
			modelAndView = controller.registerVisitor(null, response);
		} catch (Exception exception) {
			assertEquals(
					"Error in Transaction, Please re-Try. for more information check Logfile in C:\\FERSLOG folder",
					exception.getMessage());
		}
		assertEquals(null, modelAndView.getViewName());
	}

	/**
	 * Positive test case for method updateVisitor
	 */
	@Test
	public void testUpdateVisitor_Positive() {
		try {
			request = new MockHttpServletRequest("GET", "/updatevisitor.htm");
			Visitor visitor = visitorDao.searchUser("ylee", "password");
			session.setAttribute("VISITOR", visitor);
			request.setSession(session);
			request.setParameter("username", "ylee");
			//request.setParameter("password", "password");
			request.setParameter("firstname", "fname");
			request.setParameter("lastname", "lname");
			request.setParameter("email", "mail");
			request.setParameter("phoneno", "3333");
			request.setParameter("address", "testaddress");

			modelAndView = controller.updateVisitor(request, response);
		} catch (Exception exception) {
			fail("Exception");
		}
		assertEquals("/updatevisitor.jsp", modelAndView.getViewName());
	}

	/**
	 * Negative test case for method updateVisitor
	 */
	@Test
	public void testUpdateVisitor_Negative() {
		try {
			modelAndView = controller.updateVisitor(null, response);
		} catch (Exception exception) {
			assertEquals(
					"Error in Transaction, Please re-Try. for more information check Logfile in C:\\FERSLOG folder",
					exception.getMessage());
		}
		assertEquals(null, modelAndView.getViewName());	}

	/**
	 * Positive test case for method unregisterEvent
	 */
	@Test
	public void testUnregisterEvent_Positive() {
		try {
			request = new MockHttpServletRequest("GET", "/eventunreg.htm");
			Visitor visitor = visitorDao.searchUser("ylee", "password");
			session.setAttribute("VISITOR", visitor);
			request.setParameter("eventId", "1001");
			request.setParameter("eventsessionid", "10001");
			request.setSession(session);
			request.setParameter("USERNAME", "ylee");
			request.setParameter("PASSWORD", "password");
			modelAndView = controller.unregisterEvent(request, response);
		} catch (Exception exception) {
			fail("Exception");
		}
		assertEquals("/visitormain.jsp", modelAndView.getViewName());
	}

	/**
	 * Negative test case for method unregisterEvent
	 */
	@Test
	public void testUnregisterEvent_Negative() {
		try {
			modelAndView = controller.unregisterEvent(null, response);
		} catch (Exception exception) {
			assertEquals(
					"Error in Transaction, Please re-Try. for more information check Logfile in C:\\FERSLOG folder",
					exception.getMessage());
		}
		assertEquals(null, modelAndView.getViewName());
	}

	/**
	 * Positive test case for search events by name
	 */
	@Test
	public void testSearchEventsByName_Positive() {
		try {
			request = new MockHttpServletRequest("GET",
					"/searchEventByName.htm");
			Visitor visitor = visitorDao.searchUser("ylee", "password");
			session.setAttribute("VISITOR", visitor);
			request.setSession(session);
			request.setParameter("eventname", "rose");
			modelAndView = controller.searchEventsByName(request, response);
		} catch (Exception exception) {
			exception.printStackTrace();
			fail("Exception");
		}
		assertEquals("/visitormain.jsp", modelAndView.getViewName());
	}

	/**
	 * Positive test case for search events by name catalog
	 */
	@Test
	public void testSearchEventsByNameCatalog_Positive() {
		try {
			request = new MockHttpServletRequest("GET",
					"/searchEventByNameCatalog.htm");
			Visitor visitor = visitorDao.searchUser("ylee", "password");
			session.setAttribute("VISITOR", visitor);
			request.setSession(session);
			request.setParameter("eventname", "rose");
			modelAndView = controller.searchEventsByNameCatalog(request,
					response);
		} catch (Exception exception) {
			fail("Exception");
		}
		assertEquals("/eventCatalog.jsp", modelAndView.getViewName());
	}

	/**
	 * Test case for show events in asc order
	 */
	@Test
	public void testShowEventsAsc() {
		try {
			request = new MockHttpServletRequest("GET", "/displayasc.htm");
			Visitor visitor = visitorDao.searchUser("ylee", "password");
			session.setAttribute("VISITOR", visitor);
			request.setSession(session);
			modelAndView = controller.showEventsAsc(request, response);
		} catch (Exception exception) {
			fail("Exception");
		}
		assertEquals("/visitormain.jsp", modelAndView.getViewName());	
	}

	/**
	 * Test case for show events in desc order
	 */
	@Test
	public void testShowEventsDesc() {
		try {
			request = new MockHttpServletRequest("GET", "/displaydesc.htm");
			Visitor visitor = visitorDao.searchUser("ylee", "password");
			session.setAttribute("VISITOR", visitor);
			request.setSession(session);
			modelAndView = controller.showEventsDesc(request, response);
		} catch (Exception exception) {
			fail("Exception");
		}
		assertEquals("/visitormain.jsp", modelAndView.getViewName());
	}

	/**
	 * Test case for show events catalog asc order
	 */
	@Test
	public void testShowEventsCatalogAsc() {
		try {
			request = new MockHttpServletRequest("GET",
					"/displaycatalogasc.htm");
			Visitor visitor = visitorDao.searchUser("ylee", "password");
			session.setAttribute("VISITOR", visitor);
			request.setSession(session);
			modelAndView = controller.showEventsCatalogAsc(request, response);
		} catch (Exception exception) {
			fail("Exception");
		}
		assertEquals("/eventCatalog.jsp", modelAndView.getViewName());	
	}

	/**
	 * Test case for show events catalog desc
	 */
	@Test
	public void testShowEventsCatalogDesc() {
		try {
			request = new MockHttpServletRequest("GET",
					"/displaycatalogdesc.htm");
			Visitor visitor = visitorDao.searchUser("ylee", "password");
			session.setAttribute("VISITOR", visitor);
			request.setSession(session);
			modelAndView = controller.showEventsCatalogDesc(request, response);
		} catch (Exception exception) {
			fail("Exception");
		}
		assertEquals("/eventCatalog.jsp", modelAndView.getViewName());
	}

	/**
	 * Negative test case for search events by name
	 */
	@Test
	public void testSearchEventsByName_Negative() {
		try {
			modelAndView = controller.searchEventsByName(null, response);
		} catch (Exception exception) {
			assertEquals(
					"Error in Transaction, Please re-Try. for more information check Logfile in C:\\FERSLOG folder",
					exception.getMessage());
		}
		assertEquals(null, modelAndView.getViewName());	
	}

	/**
	 * Negative test case for search events by name catalog
	 */
	@Test
	public void testSearchEventsByNameCatalog_Negative() {
		try {

			modelAndView = controller.searchEventsByNameCatalog(null, response);
		} catch (Exception exception) {
			assertEquals(
					"Error in Transaction, Please re-Try. for more information check Logfile in C:\\FERSLOG folder",
					exception.getMessage());
		}
		assertEquals(null, modelAndView.getViewName());	
	}

	/**
	 * Negative test case for show events in asc order
	 */
	@Test
	public void testShowEventsAsc_Negative() {
		try {
			modelAndView = controller.showEventsAsc(null, response);
		} catch (Exception exception) {
			assertEquals(
					"Error in Transaction, Please re-Try. for more information check Logfile in C:\\FERSLOG folder",
					exception.getMessage());
		}
		assertEquals(null, modelAndView.getViewName());	
	}

	/**
	 * Negative test case for show events in desc order
	 * 
	 */
	@Test
	public void testShowEventsDesc_Negative() {
		try {
			modelAndView = controller.showEventsDesc(request, response);
		} catch (Exception exception) {
			assertEquals(
					"Error in Transaction, Please re-Try. for more information check Logfile in C:\\FERSLOG folder",
					exception.getMessage());
		}
		assertEquals(null, modelAndView.getViewName());	
	}

	/**
	 * Negative test case for show events catalog in asc order
	 */
	@Test
	public void testShowEventsCatalogAsc_Negative() {
		
			try {
				modelAndView = controller.showEventsCatalogAsc(request, response);
			} catch (Exception exception) {
				assertEquals(
						"Error in Transaction, Please re-Try. for more information check Logfile in C:\\FERSLOG folder",
						exception.getMessage());
			}
			assertEquals(null, modelAndView.getViewName());	
	}

	/**
	 * Negative test case for show events catalog in desc order
	 */
	@Test
	public void testShowEventsCatalogDesc_Negative() {
		try {
			modelAndView = controller.showEventsCatalogDesc(request, response);
		} catch (Exception exception) {
			assertEquals(
					"Error in Transaction, Please re-Try. for more information check Logfile in C:\\FERSLOG folder",
					exception.getMessage());
		}
		assertEquals(null, modelAndView.getViewName());	
	}
	
	
	/**
	 * Positive test case for change password
	 */
	/*@Test
	public void testChangePassword_Positive(){
		*//**
		 * @TODO: Create MockHttpServletRequest object 
		 * Set visitor object in VISITOR session by calling searchUser method from visitorDAO		 
		 * Set request parameters for password
		 * Call changePassword method and assert status as success
		 *//*		
	}
	
	*//**
	 * Negative test case for change password with password as null
	 *//*
	@Test
	public void testChangePassword_PasswordNull(){
		*//**
		 * @TODO: Create MockHttpServletRequest object 
		 * Set visitor object in VISITOR session by calling searchUser method from visitorDAO		 
		 * Do not set request parameters for password
		 * Call changePassword method and assert status as success
		 *//*	
	}
	
	*//**
	 * Negative test case for change password with visitor as null
	 *//*
	@Test
	public void testChangePassword_VisitorNull(){
		*//**
		 * @TODO: Create MockHttpServletRequest object 
		 * Do not set visitor object in VISITOR session by calling searchUser method from visitorDAO		 
		 * Set request parameters for password
		 * Call changePassword method and assert status as success
		 *//*		
	}*/
	
	/**
	 * Positive test case for change password
	 */
	@Test
	public void testChangePassword_Positive(){
		try{
			request = new MockHttpServletRequest("GET", "/changePWD.htm");
			Visitor visitor = visitorDao.searchUser("ylee", "password");	
			session.setAttribute("VISITOR", visitor);
			request.setSession(session);
			request.setParameter("password", "password3");
			modelAndView = controller.changePassword(request, response);		
		}catch(Exception exception){
			fail("Exception");
		}
		assertEquals("success", modelAndView.getModelMap().get("status"));
		request.setParameter("password", "password");
		try {
			modelAndView = controller.changePassword(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * Negative test case for change password with password as null
	 */
	@Test
	public void testChangePassword_PasswordNull(){
		try{
			request = new MockHttpServletRequest("GET", "/changePWD.htm");
			Visitor visitor = visitorDao.searchUser("ylee", "password");			
			session.setAttribute("VISITOR", visitor);
			request.setSession(session);			
			modelAndView = controller.changePassword(request, response);		
		}catch(Exception exception){
			fail("Exception");
		}
		assertEquals("error", modelAndView.getModelMap().get("status"));
	}
	
	/**
	 * Negative test case for change password with visitor as null
	 */
	@Test
	public void testChangePassword_VisitorNull(){
		try{
			request = new MockHttpServletRequest("GET", "/changePWD.htm");
			Visitor visitor = new Visitor();			
			session.setAttribute("VISITOR", visitor);
			request.setSession(session);
			request.setParameter("password", "password");
			modelAndView = controller.changePassword(request, response);		
		}catch(Exception exception){
			fail("Exception");
		}
		assertEquals("error", modelAndView.getModelMap().get("status"));
	}
}
