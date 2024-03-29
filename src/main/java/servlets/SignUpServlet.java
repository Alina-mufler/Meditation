package servlets;

import dto.SignUpForm;
import services.SignUpService;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/signUp")
public class SignUpServlet extends HttpServlet {

    private SignUpService signUpService;
    private String BASE_CONTEXT;

    @Override

    public void init(ServletConfig config) throws ServletException {
        signUpService = (SignUpService) config.getServletContext().getAttribute("signUpService");
        BASE_CONTEXT = (String) config.getServletContext().getAttribute("baseContext");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.sendRedirect(BASE_CONTEXT);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        SignUpForm form = new SignUpForm();
        form.setUsername(request.getParameter("name"));
        form.setEmail(request.getParameter("email"));
        form.setPassword(request.getParameter("password"));

        Long id = signUpService.signUp(form);
        if (id > 0) {
            HttpSession session = request.getSession();
            session.setAttribute("id", id);
            response.sendRedirect(BASE_CONTEXT + "/profile");
        } else {
            request.getSession().setAttribute("error", id);
            response.sendRedirect(BASE_CONTEXT);
        }

    }
}
