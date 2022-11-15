package sevletdemo.part04;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sessionEmpList")
public class SessionEmpcontroller extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		EmployeesDAO dao = EmployeesDAO.getInstance();
		req.setAttribute("aList", dao.myList());
		
		String path ="sevletview/part04/list.jsp";
		
		RequestDispatcher dis = req.getRequestDispatcher(path);
		dis.forward(req, resp);
	}
}
