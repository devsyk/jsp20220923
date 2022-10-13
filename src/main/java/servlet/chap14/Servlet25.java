package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet25
 */
@WebServlet("/Servlet25")
public class Servlet25 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet25() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "INSERT INTO Employees "
				+ "(LastName, FirstName, BirthDate, Photo, Notes) "
				+ "VALUES ('Lee', 'Sunshin', '1900-01-01', 'EmpIDAA.pic', 'General')";
		
		ServletContext application = request.getServletContext();
		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.user").toString();
		String pw = application.getAttribute("jdbc.password").toString();
		
		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement stmt = con.createStatement();
				){
			
			int cnt = stmt.executeUpdate(sql); //insert, update, delete 경우 executeUpdate()
			
			System.out.println(cnt); // 1이면 쿼리 성공
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
