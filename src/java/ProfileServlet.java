import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String name = request.getParameter("name");
        String studentID = request.getParameter("studentID");
        String program = request.getParameter("program");
        String email = request.getParameter("email");
        String hobbies = request.getParameter("hobbies");
        String intro = request.getParameter("intro");

        
        HttpSession session = request.getSession();
        session.setAttribute("name", name);
        session.setAttribute("studentID", studentID);
        session.setAttribute("program", program);
        session.setAttribute("email", email);
        session.setAttribute("hobbies", hobbies);
        session.setAttribute("intro", intro);

        response.sendRedirect("ProfileDisplay.jsp");

       
    }
}
