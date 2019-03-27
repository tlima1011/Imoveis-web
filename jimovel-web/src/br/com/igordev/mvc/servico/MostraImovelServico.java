package br.com.igordev.mvc.servico;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.igordev.dao.ImovelDao;
import br.com.igordev.modelo.Imovel;

public class MostraImovelServico implements Servico {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String parametro = request.getParameter("id");
		if (parametro != null) {
			Long id = Long.parseLong(request.getParameter("id"));
			System.out.println("Buscando o imóvel...");
			Imovel imovel = new ImovelDao().busca(id);
			request.setAttribute("imovel", imovel);
		}
		return "cadastra-imovel.jsp";
	}

}
