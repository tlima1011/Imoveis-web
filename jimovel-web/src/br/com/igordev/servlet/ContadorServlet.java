package br.com.igordev.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/contador")
public class ContadorServlet extends HttpServlet {

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		System.out.println("Iniciando o SERVLET!");
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
		System.out.println("Destruindo o SERVLET!");
	}
	
	private int contador = 0; 
	@Override protected void service(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		++contador; 
		PrintWriter out = res.getWriter(); 
		out.println("<html><body>"); 
		out.println("Valor do contador: " + contador); 
		out.println("</body></html>"); }

}
