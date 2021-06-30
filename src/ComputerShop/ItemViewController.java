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


@WebServlet("/ItemViewController")
public class ItemViewController extends HttpServlet {
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
	
    public ItemViewController() {
        super();


    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			try {
				listItems(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}	

	private void listItems(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Item> items = db.getItems();
		
		
		request.setAttribute("ILIST", items);
				
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/viewItemList.jsp");
		dispatcher.forward(request, response);
			
	}



}
