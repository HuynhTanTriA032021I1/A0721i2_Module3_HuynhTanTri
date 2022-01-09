import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = {"","/list"})
public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<model.Customer> customers = new ArrayList<>();
        customers.add(new model.Customer("1", "Huỳnh Tấn Trí", "21/11/1999", "Quảng Ngãi", "https://bandovietnam.com.vn/media/uploads/uploads/20152924-ban-do-tinh-quang-ngai-bandovietnam.jpg"));
        customers.add(new model.Customer("2", "Phan Thị Mỹ Linh", "01/04/1999", "Bình Định", "https://www.invert.vn/media/uploads/uploads/01213016-ban-do-tinh-binh-dinh.jpg"));
        customers.add(new model.Customer("3", "Huỳnh Phan Quỳnh Anh", "11/11/1999", "Đà Nẵng", "https://bandovietnam.com.vn/media/uploads/uploads/25141724-ban-do-thanh-pho-da-nang-bandovietnam.jpg"));

        request.setAttribute("customerList", customers);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
