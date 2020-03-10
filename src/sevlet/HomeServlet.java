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

import domain.City;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/HomeServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<City> cities = (List<City>) request.getServletContext().getAttribute("cities");
		if(cities == null)
			cities = new ArrayList<City>();
		
		String page = "";
		
		String operacija = (String) request.getParameter("operacija");
		if(operacija.equals("izlistaj")) {
			page = "WEB-INF/pages/ListaGradova.jsp";
		}
		else if(operacija.equals("upisi")) {
			page = "WEB-INF/pages/DodajNoviGrad.jsp";
		}
		else if(operacija.equals("delete")) {
			int brojGrada = Integer.parseInt((String) request.getParameter("brojGrada"));
			cities.remove(new City(brojGrada));
			page="WEB-INF/pages/ListaGradova.jsp";
		}
		else if(operacija.equals("edit")) {
			page="WEB-INF/pages/Edit.jsp";
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<City> cities = (List<City>) request.getServletContext().getAttribute("cities");
		if(cities == null)
			cities = new ArrayList<City>();
		
		String page = "WEB-INF/pages/DodajNoviGrad.jsp";
		String name = request.getParameter("name");
		String errorMessage = "";
		int cityNumber = 0;
		
		boolean greska = false;
		try {
			cityNumber = Integer.parseInt(request.getParameter("cityNumber"));
			for (City city : cities) {
				if(city.getCityNumber() == cityNumber) {
					 errorMessage = "Grad pod zadatim brojem vec postoji";
					greska = true;
					break;
				}
			}
		}catch(NumberFormatException nfe) {
			errorMessage = "Niste uneli ispravan format broja grada";
			greska = true;
		}
		if(!greska) {
			cities.add(new City(cityNumber, name));
			page = "WEB-INF/pages/Home.jsp";
		}
		
		request.setAttribute("errorMessage", errorMessage);
		request.getServletContext().setAttribute("cities", cities);
		
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
