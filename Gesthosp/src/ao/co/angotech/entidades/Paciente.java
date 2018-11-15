package ao.co.angotech.entidades;

public class Paciente {

	private static final long serialVersionUID = 1L;
	//tblEntidade
	private int pac_idade;
	private int fk_plano_conta;
	private String NumeroProcesso;
	public int getPac_idade() {
		return pac_idade;
	}
	public void setPac_idade(int pac_idade) {
		this.pac_idade = pac_idade;
	}
	public int getFk_plano_conta() {
		return fk_plano_conta;
	}
	public void setFk_plano_conta(int fk_plano_conta) {
		this.fk_plano_conta = fk_plano_conta;
	}
	public String getNumeroProcesso() {
		return NumeroProcesso;
	}
	public void setNumeroProcesso(String numeroProcesso) {
		NumeroProcesso = numeroProcesso;
	}
	
	
}
