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

@WebServlet("/ItemController")
public class ItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private ItemDBDemo db;
	
	@Resource(name="jdbc/computer_shop")
	
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException{
		
		super.init();
		
		try {
			
			db = new ItemDBDemo(dataSource);
		}
		catch (Exception e) {
			
			throw new ServletException(e);
		}
	}
    public ItemController() {
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
				
				listItems(request, response);
				break;
				
			case "ADD":
				addItems(request, response);
				break;
			
			default:
				listItems(request, response);
			}
				
		}
		catch (Exception e) {
			throw new ServletException(e);
		}
	
	}
	
	private void listItems(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Item> items = db.getItems();
		
		
		request.setAttribute("ILIST", items);
				
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ItemList.jsp");
		dispatcher.forward(request, response);
		
	}
	
	private void addItems(HttpServletRequest request, HttpServletResponse response) throws Exception {
		

		String ID = request.getParameter("ItemId");	
		String itemName = request.getParameter("itemName");
		double price = Double.parseDouble(request.getParameter("price"));
		int unit = Integer.parseInt(request.getParameter("units"));
		String did = request.getParameter("dID");
		double discount = Double.parseDouble(request.getParameter("discount"));
		
		
		Item itm = new Item(ID,itemName, price, unit,did, discount );
	
		
		db.addItem(itm);

		listItems(request, response);
		
	}
	
	
	
	


}
