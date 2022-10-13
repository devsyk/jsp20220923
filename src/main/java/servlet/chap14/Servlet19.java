package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet19
 */
@WebServlet("/Servlet19")
public class Servlet19 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet19() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerID, CustomerName, Address, City, Country FROM Customers";
		
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.user").toString();
		String password = application.getAttribute("jdbc.password").toString();
		
		try(
				Connection con = DriverManager.getConnection(url, user, password);				
				Statement stmt = con.createStatement();				
				ResultSet rs = stmt.executeQuery(sql);
				) {
			
			List<Customer> list = new ArrayList<>();
			while(rs.next()) {
				Customer customer = new Customer();
//				customer.setName(rs.getString(2));
				customer.setName(rs.getString("CustomerName"));
//				customer.setAddress(rs.getString(3));
				customer.setAddress(rs.getString("Address"));
				customer.setId(rs.getInt("CustomerID"));
				customer.setCity(rs.getString("City"));
				customer.setCountry(rs.getString("Country"));
				
				list.add(customer);
			}
			
			request.setAttribute("customers", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/view/chap14/view07.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
