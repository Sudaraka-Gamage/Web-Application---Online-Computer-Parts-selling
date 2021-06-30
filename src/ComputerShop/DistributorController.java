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

@WebServlet("/DistributorController")
public class DistributorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	private DistributorDBDemo dbDemo;
	
	@Resource(name="jdbc/computer_shop")
	
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException{
		
		super.init();
		
		try {
			
			dbDemo = new DistributorDBDemo(dataSource);
		}
		catch (Exception e) {
			
			throw new ServletException(e);
		}
	}    public DistributorController() {
        
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
				
				listDistributor(request, response);
				break;
				
			case "ADD":
				addDistributor(request, response);
				break;
			
			default:
				listDistributor(request, response);
			}
				
		}
		catch (Exception e) {
			throw new ServletException(e);
		}
	

	}

	private void addDistributor(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
		String ID = request.getParameter("DistributorId");
		String cName = request.getParameter("comName");
		String aName = request.getParameter("agtName");
		String cPhone = request.getParameter("comPhone");
		String aPhone = request.getParameter("agtPhone");	
		String mail= request.getParameter("Email");	
		String addr = request.getParameter("addrs");	
		
		Distributor d1 = new Distributor(ID, cName, aName, cPhone, aPhone, mail, addr);
	
		
		dbDemo.addDistributor(d1);

		listDistributor(request, response);
	}

	private void listDistributor(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Distributor> distributor = dbDemo.getDistributors();
		
		
		request.setAttribute("DLIST", distributor);
				
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/DistributorList.jsp");
		dispatcher.forward(request, response);	
	}
	
	
	
	

	

}
