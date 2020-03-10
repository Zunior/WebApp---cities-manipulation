package sevlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.User;
import view.ViewLogin;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getSession().invalidate();
		
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		ViewLogin viewLogin = new ViewLogin();
		HttpSession session = request.getSession(true);
		List<User> users = (List<User>) request.getServletContext().getAttribute("array");
		if(users == null) {
			users = new ArrayList<User>();
		}
		
		String page = "Login.jsp";
		String errorMessage = "Nisu ispravni podaci!";
		
		boolean ispavno = false;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		for (User user : users) {
			if(user.getName().equalsIgnoreCase(username) && user.getPassword().equals(password)) {
				page = "WEB-INF/pages/Home.jsp";
//				session.setAttribute("users", users);
				session.setAttribute("currentUser", user);
				errorMessage = "";
				break;
			}else {
				
//				viewLogin.setErrorMessage(errorMessage);
			}
		}
		request.setAttribute("errorMessage", errorMessage);
//		session.setAttribute("viewLogin", viewLogin);
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	
	}

}
