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

import domain.chap14.Employee;

/**
 * Servlet implementation class Servlet17
 */
@WebServlet("/Servlet17")
public class Servlet17 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet17() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT FirstName, LastName FROM Employees";
		
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.user").toString();
		String password = application.getAttribute("jdbc.password").toString();
		
		try(
				Connection con = DriverManager.getConnection(url, user, password);				
				Statement stmt = con.createStatement();				
				ResultSet rs = stmt.executeQuery(sql);
				) {
			
			// 자바빈 프로퍼티 사용
			List<Employee> list = new ArrayList<>();
		
			while(rs.next()) {
				Employee e = new Employee();
				e.setFirstName(rs.getString(1)); //rs행의 1번 컬럼
				e.setLastName(rs.getString(2)); //rs행의 2번 컬럼
				
				list.add(e);
			}
			
			request.setAttribute("employeeList", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/view/chap14/view05.jsp";
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
