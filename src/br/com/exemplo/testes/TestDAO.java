package br.com.exemplo.testes;

import java.util.List;

import br.com.exemplo.beans.Usuario;
import br.com.exemplo.jdbc.UsuarioDAO;

public class TestDAO {

	public static void main(String[] args) {
		testAut();

	}

	public static void testCadastro() {
		Usuario usu = new Usuario();
		usu.setNome("Maria");
		usu.setEmail("maria@gmail.com");
		usu.setSenha("6588");

		UsuarioDAO usuDao = new UsuarioDAO();
		usuDao.cadastro(usu);

	}

	public static void testAlterar() {
		Usuario usu = new Usuario();
		usu.setNome("Rodolfo Rolim");
		usu.setEmail("Rodolfo.r@gmail.com");
		usu.setSenha("4123");
		usu.setId(6);

		UsuarioDAO usuDao = new UsuarioDAO();
		usuDao.Alterar(usu);

	}

	public static void testDeletar() {
		Usuario usu = new Usuario();
		usu.setId(6);

		UsuarioDAO usuDAO = new UsuarioDAO();
		usuDAO.Deletar(usu);

	}

	public static void testbuscarTodos() {
		Usuario usu = new Usuario();
		UsuarioDAO usuDAO = new UsuarioDAO();
		List<Usuario> listaResultado = usuDAO.buscarTodos(usu);
		for (Usuario u : listaResultado) {
			System.out.println("Id: " + u.getId() + " Nome: " + u.getNome() + " Email: " + u.getEmail() + " Senha: "
					+ u.getSenha());
		}
	}

	public static void testAut() {
		Usuario usuario = new Usuario();
		usuario.setEmail("damiao@gmail.com");
		usuario.setSenha("1234");
		UsuarioDAO usuDAO = new UsuarioDAO();
		Usuario usuAutenticado = usuDAO.autenticacao(usuario);
		if (usuAutenticado != null) {
			System.out.println("Existe");
		} else {
			System.out.println("Não Existe");
		}

	}
}
