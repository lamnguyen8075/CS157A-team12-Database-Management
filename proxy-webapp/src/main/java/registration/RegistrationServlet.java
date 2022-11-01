package registration;

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
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private RegistrationDao registrationDao;

    public void init() {
        registrationDao = new RegistrationDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String company = request.getParameter("company");
        String department = request.getParameter("department");

        RegistrationBean registrationBean = new RegistrationBean();
        registrationBean.setName(name);
        registrationBean.setPassword(password);
        registrationBean.setDepartment(department);
        registrationBean.setCompany(company);
        registrationBean.setEmail(email);

        try {
            if (registrationDao.validate(registrationBean)) {
                response.sendRedirect("register.jsp");
            } else {
                HttpSession session = request.getSession();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}