package egovframework.example.kiosk.vo;

public class KioskVo {
    private String menuId;
    private String category;
    private String menuName;
	private int menuPrice;
    private int menuQuantity;
    
	public String getMenuId() {
		return menuId;
	}
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public int getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(int menuPrice) {
		this.menuPrice = menuPrice;
	}
	public int getMenuQuantity() {
		return menuQuantity;
	}
	public void setMenuQuantity(int menuQuantity) {
		this.menuQuantity = menuQuantity;
	}


}
