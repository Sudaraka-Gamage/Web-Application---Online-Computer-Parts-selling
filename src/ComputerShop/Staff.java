package ComputerShop;

public class Staff {
	
	private String ID;
	private String firstName;
	private String lastName;
	private String rep;
	private String phone;
	private String mail;
	private String address;
	private String password;
	
	public Staff(String iD, String firstName, String lastName, String rep, String phone, String mail, String address,
			String password) {
		super();
		ID = iD;
		this.firstName = firstName;
		this.lastName = lastName;
		this.rep = rep;
		this.phone = phone;
		this.mail = mail;
		this.address = address;
		this.password = password;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getRep() {
		return rep;
	}

	public void setRep(String rep) {
		this.rep = rep;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Staff [ID=" + ID + ", firstName=" + firstName + ", lastName=" + lastName + ", rep=" + rep + ", phone="
				+ phone + ", mail=" + mail + ", address=" + address + ", password=" + password + "]";
	}
	
	
	
	
	
	

}
