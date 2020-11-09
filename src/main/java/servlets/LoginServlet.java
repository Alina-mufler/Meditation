package servlets;

import dto.LoginForm;
import services.LoginService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private LoginService loginService;
    private String BASE_CONTEXT;

    @Override
    public void init(ServletConfig config) throws ServletException {
        loginService = (LoginService) config.getServletContext().getAttribute("loginService");
        BASE_CONTEXT = (String) config.getServletContext().getAttribute("baseContext");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect(BASE_CONTEXT);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        LoginForm loginForm = new LoginForm();
        loginForm.setEmail(req.getParameter("email"));
        loginForm.setPassword(req.getParameter("password"));

        Long id = loginService.login(loginForm);

        if (id >= 0) {
            HttpSession session = req.getSession();
            session.setAttribute("id", id);
            resp.sendRedirect(BASE_CONTEXT + "/profile");
        } else {
            req.getSession().setAttribute("error", id);
            resp.sendRedirect(BASE_CONTEXT);
        }
    }
}
