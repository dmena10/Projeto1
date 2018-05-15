package projeto;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projeto.FuncionariosDAO;
import projeto.Funcionarios;

//Classe responsável em responder as requisiçoes da lista de funcionários  

/**
 * Servlet implementation class FuncionarioServlet
 */
@WebServlet("/FuncionarioServlet")
public class FuncionarioServlet extends HttpServlet {
	
	
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FuncionarioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doAction(request, response);
		
	}
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doAction(request, response);
		
	}
	
	@SuppressWarnings("static-access")
	public void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String destino = "FuncionarioLista.jsp";
		
		List<Funcionarios> lista = new ArrayList<>();
		 
		 
		Funcionarios funcionario = new Funcionarios();
		FuncionariosDAO dao = new FuncionariosDAO();
		
		funcionario.setName(request.getParameter("name"));
		funcionario.setRole(request.getParameter("role"));
		funcionario.setSalary(request.getParameter("salary"));
		
		lista = dao.listar();
		request.setAttribute("FuncionarioLista", lista);;
		
		RequestDispatcher rd = request.getRequestDispatcher(destino);
		rd.forward(request, response); 
	   
		
	}
	


}
