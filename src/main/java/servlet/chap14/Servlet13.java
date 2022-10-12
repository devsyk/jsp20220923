package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet13
 */
@WebServlet("/Servlet13")
public class Servlet13 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet13() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 1. request 파라미터 수집
		
		// 2. request parameter 가공

		// 3. 실제 업무 (business logic), 많은 경우 db관련 작업
		String sql = "SELECT FirstName FROM Employees WHERE EmployeeID = 1";
		
		// class loading - ServletContextListener에서 실행
		
		// connection 얻기
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.user").toString();
		String password = application.getAttribute("jdbc.password").toString();
		
		try(
				Connection con = DriverManager.getConnection(url, user, password);
				
				// statement 생성
				Statement stmt = con.createStatement();
				
				// 쿼리 실행
				ResultSet rs = stmt.executeQuery(sql);
				) {
			
			// 쿼리 결과 가공
			if(rs.next()) {
				String firstName = rs.getString(1);
				System.out.println(firstName);
				
				// 4. add attribute 
				request.setAttribute("firstName", firstName);
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		// 5. forward / redirect
		String path = "/WEB-INF/view/chap14/view01.jsp";
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
