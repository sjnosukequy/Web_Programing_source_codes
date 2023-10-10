package Business;

import Data.*;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.util.GregorianCalendar;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

@WebServlet(urlPatterns = "/emailList")
public class EmailListServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		// DATE:
		GregorianCalendar currentDatefooter = new GregorianCalendar();
		int currentYear = currentDatefooter.get(Calendar.YEAR);
		request.setAttribute("year", currentYear);

		String url = "/index.jsp";
		// get current action
		String action = request.getParameter("action");
		if (action == null) {
			action = "join"; // default action
		}
		if (action.equals("join")) {
			// url = "/index.jsp"; // the "join" page
			// String path = getServletContext().getRealPath("/WEB-INF/EmailList.txt");
			// User user = UserIO.getUserRecent(path);
			// session.setAttribute("user", user);
			response.sendRedirect(request.getContextPath());
		}

		else if (action.equals("add")) {
			request.setCharacterEncoding("UTF-8");
			String firstName = request.getParameter("firstName");
			request.setCharacterEncoding("UTF-8");
			String lastName = request.getParameter("lastName");
			request.setCharacterEncoding("UTF-8");
			String email = request.getParameter("email");
			String message;
			if (firstName == null || lastName == null || email == null || firstName.isEmpty()
					|| lastName.isEmpty() || email.isEmpty()) {
				message = "Please fill out all everything!";
				url = "/index.jsp";
			} else {
				// store data in User object and save User object in database
				User user = new User(firstName, lastName, email);
				// UserDB.insert(user);

				// set User object in request object and set URL
				request.setAttribute("user", user);
				url = "/thanks.jsp"; // the "thanks" page
				message = "";

				// create the Date object and store it in the request
				Date currentDate = new Date();
				request.setAttribute("currentDate", currentDate);

				// create users list and store it in the session
				String path = getServletContext().getRealPath("/WEB-INF/EmailList.txt");
				// ADDING RECORDS
				UserIO.addRecord(user, path);

				ArrayList<User> users = UserIO.getUsers(path);
				session.setAttribute("users", users);
			}
			request.setAttribute("message", message);
			// forward request and response objects to specified URL
			getServletContext().getRequestDispatcher(url).forward(request, response);
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
