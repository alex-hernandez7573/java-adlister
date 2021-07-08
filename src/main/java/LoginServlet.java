import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Override("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet (HttpServletRequest req, HttpServletResponse resp)
        throws SecurityException, IOException {
        req.getRequestDispatcher("/login.jsp").forward();
    }
}
