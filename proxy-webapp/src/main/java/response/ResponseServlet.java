package response;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/login")
public class ResponseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ResponseDao responseDao;

    public void init() {
        responseDao = new ResponseDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String company = request.getParameter("company");
        String department = request.getParameter("department");

        ResponseBean responseBean = new ResponseBean();
        responseBean.setName(name);
        responseBean.setPassword(password);
        responseBean.setDepartment(department);
        responseBean.setCompany(company);
        responseBean.setEmail(email);

        try {
            if (responseDao.validate(responseBean)) {
                response.sendRedirect("register.jsp");
            } else {
                HttpSession session = request.getSession();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}