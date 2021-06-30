package ComputerShop;

public class Item {
	
	private String ID;
	private String name;
	private double price;
	private int units;
	private String did;
	private double discount;
	
	public Item(String iD, String name, double price, int units, String did, double discount) {
		super();
		ID = iD;
		this.name = name;
		this.price = price;
		this.units = units;
		this.did = did;
		this.discount = discount;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getUnits() {
		return units;
	}

	public void setUnits(int units) {
		this.units = units;
	}

	public String getDid() {
		return did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	@Override
	public String toString() {
		return "Item [ID=" + ID + ", name=" + name + ", price=" + price + ", units=" + units + ", did=" + did
				+ ", discount=" + discount + "]";
	}
	
	
	
	
}
