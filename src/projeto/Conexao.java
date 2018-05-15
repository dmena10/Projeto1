package projeto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	// Classe que faz a conex�o com Banco de dados Oracle
	
	 public static Connection ObterConexao() {
		 
	//Infoma��es necess�rias para efetuar a conex�o	 
     	 Connection conexao = null;
     	 String server = "localhost";
         String port = "1521";
         String database = "orcl";
         String user = "dmena";
         String passwd = "dmena";
             
    // Efetua a conex�o com servidor do Banco de Dados     
         try {

             Class.forName("oracle.jdbc.driver.OracleDriver");
           
             String url = "jdbc:oracle:thin:@" + server + ":" + port + ":" + database;
             
             conexao = DriverManager.getConnection(url, user, passwd);                       
             System.out.println("Conectou....");
             
             
    } catch (ClassNotFoundException e) { 
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    }
	return conexao;
	
	
	 }
}
	 
	 
