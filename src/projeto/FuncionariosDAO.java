package projeto;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

//Classe que busca a lista de funcionários do banco de dados

public class FuncionariosDAO extends Conexao {
	
	
	public static List<Funcionarios> listar() {
		List<Funcionarios> lista = new ArrayList<>();
		try {
			
			// Executa a query para buscar os campos selecionados da tabela funcionários
			
			String query = "select name, role, salary from dmena.funcionarios";
			Connection conexao = ObterConexao();
			Statement stm = conexao.createStatement();
			ResultSet rs = stm.executeQuery(query);
			while (rs.next()) {
				Funcionarios funcionario = new Funcionarios();
				funcionario.setName(rs.getString("name"));
				funcionario.setRole(rs.getString("role"));
				funcionario.setSalary(rs.getString("salary"));
				
				lista.add(funcionario);
				
			}
			
			stm.close();
			conexao.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return lista;
	} 
	
	

}
