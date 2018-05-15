

package projeto;

import java.io.Serializable;

//Classe da lista de Funcionarios com suas variáveis

public class Funcionarios implements Serializable  {


	private static final long serialVersionUID = 1L;
	
	private String name;
	private String role;
	private String salary;
	private String manager;
	private int gcm;
	
	
	
	// Contrutor padrão da classe
	
	public Funcionarios()
	
	{
		
					
	}
	
	//métodos getters e setters dos atributos da classe

	public String getName(){
		
		return name;
		
	}
	
	public String getRole(){
	
		return role;
				
	}
	
	public String getSalary(){
		
		return salary;
	}
	
	public void setName(String name){
		
		this.name = name;
	}
		
	public void setRole(String role){
		
		this.role = role;
	}
	
public void setSalary(String salary){
		
		this.salary = salary;
	}


}
