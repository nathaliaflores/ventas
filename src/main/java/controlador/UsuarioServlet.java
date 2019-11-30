
package controlador;

import conexion.Conexion;
import dao.UsuarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class UsuarioServlet extends HttpServlet {

    Conexion conn =  new Conexion();
    UsuarioDao userd = new UsuarioDao(conn);
    String msg ="";
    RequestDispatcher rd;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String action = request.getParameter("action");
       switch(action){
           case "login" : login(request, response);break;
                   default :
                       throw new AssertionError();
       
       }
    }


    protected void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String clave = request.getParameter("clave");
        
        boolean respuesta = userd.login(usuario, clave);
        
        if(respuesta){
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);
            response.sendRedirect("admin.jsp");
        
        }
        else{
            msg = "No existe usuario o clave";
            request.setAttribute("msg", msg);
            rd = request.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);
        }
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
}
