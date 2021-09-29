package Control;





import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "CartControl", urlPatterns = {"/cart"})
public class CartFood extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id = request.getParameter("id");
        Cookie arr[] = request.getCookies();
        String text = "";


        for (Cookie o : arr) {
            if (o.getName().equals("id")) {
                text = text + o.getValue();
                o.setMaxAge(0);
                response.addCookie(o);
            }
        }
        if (text.isEmpty()) {
            text = id;
        } else {
            text = text + "," + id;
        }
        Cookie c = new Cookie("id", text);
        c.setMaxAge(60 * 60 * 24);
        response.addCookie(c);
        System.out.println(c.getName());
        System.out.println(c.getValue());

        response.sendRedirect("ShowCart");

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "abc";
    }

}