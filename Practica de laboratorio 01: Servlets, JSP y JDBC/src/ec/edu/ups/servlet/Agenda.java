package ec.edu.ups.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.DaoUsuario;
import ec.edu.ups.modelo.user;

/**
 * Servlet implementation class Agenda
 */
@WebServlet("/Agenda")
public class Agenda extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Agenda() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	    DaoUsuario userDao = DAOFactory.getFactory().getUsuarioDAO();
        user user = userDao.findById(String.valueOf(request.getSession().getAttribute("userID")));
        
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/views/jsp/my-agenda.jsp").forward(request, response);
        //RequestDispatcher dispatcher = request.getRequestDispatcher("/views/jsp/my-agenda.jsp");
        //dispatcher.forward(request, response);
        
        System.out.println("Nombre: "+user.getNombre() + " Apellido: "+user.getApellido());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
