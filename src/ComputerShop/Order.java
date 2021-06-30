package ComputerShop;

public class Order {
	
	
	private  String  Idorder, numOfItems,IID,DID,date;
	
	
	

	public Order( String  Idorder, String  numOfItems,  String  IID,  String DID , String date) {
		super();
		this.Idorder = Idorder;
		this.numOfItems = numOfItems;
		this.IID=IID;
		this.DID=DID;
		this.date=date;
		
	}
	
	@Override
	public boolean equals(Object arg) {
		Order ord=(Order)arg;
		if(this.Idorder == ord.Idorder && this. numOfItems == ord. numOfItems && this.IID == ord.IID && this.DID == ord.DID&& this. date == ord. date){
			return true;
		}
		else
			return false;
	}

	public  String getOrderId() {
		return Idorder;
	}

	public void setOrderId(  String Idorder) {
		this.Idorder = Idorder;
	}

	public  String  getnumOfItems() {
		return numOfItems;
	}
	
	public void setnumOfItems(  String  numOfItems) {
		this.numOfItems =numOfItems;
	}

	public  String  getIID() {
		return IID;
	}

	public void setIID( String  IID) {
		this.IID = IID;
	}
	public  String  getDID() {
		return DID;
	}
	public void setDID( String  DID) {
		this.DID=DID;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date=date;
	}
}
