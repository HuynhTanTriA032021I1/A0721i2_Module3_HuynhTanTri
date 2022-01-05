import java.io.IOException;

@javax.servlet.annotation.WebServlet(name = "ProductDiscountCalculatorServlet", urlPatterns = "/display-discount")
public class ProductDiscountCalculatorServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        double discount = Double.parseDouble(request.getParameter("discount"));

        double DiscountAmount = price * discount * 0.01;
        double DiscountPrice = price - DiscountAmount;

        request.setAttribute("name", name);
        request.setAttribute("DiscountAmount", DiscountAmount);
        request.setAttribute("DiscountPrice", DiscountPrice);

        request.getRequestDispatcher("display-discount.jsp").forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }
}
