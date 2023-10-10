package murach.cart;

import murach.data.ProductIO;
import murach.business.LineItem;
import murach.business.Cart;
import murach.business.Product;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet(urlPatterns = { "/cart" })
public class CartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/index.jsp";
        ServletContext sc = getServletContext();

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "cart"; // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("return")) {
            response.sendRedirect(request.getContextPath());
            return;
        } else if (action.equals("checkout")) {
            url = "/checkout.jsp"; // the "index" page
        }
        else if (action.equals("cart2"))
        {
            url = "/cart.jsp";
        } else if (action.equals("cart")) {
            String productCode = request.getParameter("productCode");
            String quantityString = request.getParameter("flag_act");

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }

            // if the user enters a negative or invalid quantity,
            // the quantity is automatically reset to 1.
            int quantity;
            try {
                quantity = Integer.parseInt(quantityString);
                // if (quantity == 0) {
                // quantity = 1;
                // }
            } catch (NumberFormatException nfe) {
                quantity = 1;
            }

            String path = sc.getRealPath("/WEB-INF/products.txt");
            Product product = ProductIO.getProduct(productCode, path);

            if (product != null) {
                LineItem lineItem = new LineItem();
                if (cart.CheckExsPro(productCode)) {
                    lineItem = cart.getItem(productCode);
                } else {
                    lineItem.setProduct(product);
                    lineItem.setQuantity(quantity);
                }
                if (quantity == 1) {
                    cart.addItem(lineItem);
                } else if (quantity == 0) {
                    cart.minusItem(lineItem);
                } else if (quantity == -1) {
                    cart.removeItem(lineItem);
                }
                session.setAttribute("cart", cart);
            }
            // url = "/cart.jsp";
            response.sendRedirect(request.getContextPath() + "/cart?action=cart2");
            return;
        }
        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}