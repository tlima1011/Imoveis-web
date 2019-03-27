package br.com.igordev.teste;

import java.util.List;

import br.com.igordev.dao.ImovelDao;
import br.com.igordev.modelo.Imovel;

public class TestaLista {

	public static void main(String[] args) {
		
		List<Imovel> imoveis = new ImovelDao().getLista(); 
		System.out.println("Lista de imóveis:\n"); 
		imoveis.forEach(i -> System.out.println(i.getId() + " - " + i.getProprietario())); 
		}// fim main

	}


