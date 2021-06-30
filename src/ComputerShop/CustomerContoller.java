package ComputerShop;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


@WebServlet("/CustomerContoller")
public class CustomerContoller extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private CustomerDBDemo dbDemo;
	
	@Resource(name="jdbc/computer_shop")
	
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException{
		
		super.init();
		
		try {
			
			dbDemo = new CustomerDBDemo(dataSource);
		}
		catch (Exception e) {
			
			throw new ServletException(e);
		}
	}
    public CustomerContoller() {
    	
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			
			String Command = request.getParameter("command");
			
			if (Command == null) {
				Command = "LIST";
			}
			

			
			switch (Command) {
			
			case "LIST":
				
				listCustomers(request, response);
				break;
				
			case "ADD":
				addCustomer(request, response);
				break;
			
			default:
				listCustomers(request, response);
			}
				
		}
		catch (Exception e) {
			throw new ServletException(e);
		}
	
	}
	
	private void listCustomers(HttpServletRequest request, HttpServletResponse response) throws Exception{

		
		
		List<Customer> customer = dbDemo.getCustomers();
		
		
		request.setAttribute("CLIST", customer);
				
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/CustomerList1.jsp");
		dispatcher.forward(request, response);
	}
	
	private void addCustomer(HttpServletRequest request, HttpServletResponse response) throws Exception {
				
				String ID = request.getParameter("CustomerId");	
				String firstName = request.getParameter("firstName");
				String lastName = request.getParameter("lastName");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");	
				
				Customer c1 = new Customer(ID,firstName, lastName, email,phone);
			
				
				dbDemo.addCustomer(c1);
		
				listCustomers(request, response);
	}
	
}
