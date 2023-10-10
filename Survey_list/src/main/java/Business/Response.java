package Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Response extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "/index.jsp";
		String action = request.getParameter("action");
		if (action == null) {
			action = "join"; // default action
		}
		// perform action and set URL to appropriate page
		if (action.equals("join")) {
			response.sendRedirect(request.getContextPath());
		} else if (action.equals("add")) {

			// get parameters from the request
			String firstName = request.getParameter("fname");
			String lastName = request.getParameter("lname");
			String email = request.getParameter("email");
			String dob = request.getParameter("DOB");
			String hear = request.getParameter("heard?");
			Boolean news = Boolean.parseBoolean(request.getParameter("contact?"));
			String contact = request.getParameter("contact");

			// store data in User object and save User object in database
			String message;
			if (firstName == null || lastName == null || email == null || dob == null || hear == null || firstName.isEmpty()
					|| lastName.isEmpty() || email.isEmpty() || dob.isEmpty() || hear.isEmpty()) {
				message = "*Please fill out all the required fields!";
				url = "/index.jsp";
			} else {
				Student user = new Student();
				if (!news) {
					contact = "";
				}
				user = new Student(firstName, lastName, email, dob, hear, contact);
				message = "";
				url = "/thanks.jsp";
				request.setAttribute("user", user);
				request.setAttribute("news", news);
			}
			request.setAttribute("message", message);
			getServletContext().getRequestDispatcher(url).forward(request, response);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
}
