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


@WebServlet("/StaffController")
public class StaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private StaffDBDemo db;
	
	@Resource(name="jdbc/computer_shop")
	
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException{
		
		super.init();
		
		try {
			
			db = new StaffDBDemo(dataSource);
		}
		catch (Exception e) {
			
			throw new ServletException(e);
		}
	}
    public StaffController() {
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
				
				listStaff(request, response);
				break;
				
			case "ADD":
				addStaff(request, response);
				break;
			
			default:
				listStaff(request, response);
			}
				
		}
		catch (Exception e) {
			throw new ServletException(e);
		}
	
	}
	
	private void addStaff(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String ID = request.getParameter("StaffId");
		String fName = request.getParameter("firstName");
		String lName = request.getParameter("lastName");
		String Phone = request.getParameter("phone");
		String rep = request.getParameter("rept");	
		String mail= request.getParameter("Email");	
		String addr = request.getParameter("addrs");
		String pw = request.getParameter("password");
		
		Staff s1 = new Staff(ID, fName, lName, Phone,  rep , addr,mail,pw);
	
		
		db.addStaff(s1);

		
	}
	
	private void listStaff(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Staff> staff = db.getStaff() ;
		
		
		request.setAttribute("SLIST", staff);
				
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/StaffList.jsp");
		dispatcher.forward(request, response);
		
	}
	
	
	
	
	
}



