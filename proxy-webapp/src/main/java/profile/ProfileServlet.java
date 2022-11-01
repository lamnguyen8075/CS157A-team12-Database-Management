package profile;

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
public class ProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProfileDao profileDao;

    public void init() {
        profileDao = new ProfileDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String company = request.getParameter("company");
        String department = request.getParameter("department");

        ProfileBean profileBean = new ProfileBean();
        profileBean.setName(name);
        profileBean.setPassword(password);
        profileBean.setDepartment(department);
        profileBean.setCompany(company);
        profileBean.setEmail(email);

        try {
            if (profileDao.validate(profileBean)) {
                response.sendRedirect("register.jsp");
            } else {
                HttpSession session = request.getSession();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}