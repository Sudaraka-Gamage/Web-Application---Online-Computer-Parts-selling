package ComputerShop;

public class Distributor {
	
	private String ID;
	private String company;
	private String agent;
	private String comPhone;
	private String agentPhone;
	private String mail;
	private String address;
	
	public Distributor(String iD, String company, String agent, String comPhone, String agentPhone, String mail,
			String address) {
		super();
		ID = iD;
		this.company = company;
		this.agent = agent;
		this.comPhone = comPhone;
		this.agentPhone = agentPhone;
		this.mail = mail;
		this.address = address;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getAgent() {
		return agent;
	}

	public void setAgent(String agent) {
		this.agent = agent;
	}

	public String getComPhone() {
		return comPhone;
	}

	public void setComPhone(String comPhone) {
		this.comPhone = comPhone;
	}

	public String getAgentPhone() {
		return agentPhone;
	}

	public void setAgentPhone(String agentPhone) {
		this.agentPhone = agentPhone;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Distributor [ID=" + ID + ", company=" + company + ", agent=" + agent + ", comPhone=" + comPhone
				+ ", agentPhone=" + agentPhone + ", mail=" + mail + ", address=" + address + "]";
	}
	
	
	
	
}
