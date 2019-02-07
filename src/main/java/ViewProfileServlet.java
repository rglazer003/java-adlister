import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("login")==null){
            request.getSession().setAttribute("login", false);
        }
        boolean login = (boolean) request.getSession().getAttribute("login");
        if (!login){
            response.sendRedirect("/login");
        }
        if (login) {
            String user = (String) request.getSession().getAttribute("name");
            request.setAttribute("user", user);
            request.getRequestDispatcher("/profile.jsp").forward(request, response);
        }




    }
}
