package request;

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
public class RequestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private RequestDao requestDao;

    public void init() {
        requestDao = new RequestDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String company = request.getParameter("company");
        String department = request.getParameter("department");

        RequestBean requestBean = new RequestBean();
        requestBean.setName(name);
        requestBean.setPassword(password);
        requestBean.setDepartment(department);
        requestBean.setCompany(company);
        requestBean.setEmail(email);

        try {
            if (requestDao.validate(requestBean)) {
                response.sendRedirect("register.jsp");
            } else {
                HttpSession session = request.getSession();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}