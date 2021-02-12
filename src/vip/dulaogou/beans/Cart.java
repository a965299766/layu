package vip.dulaogou.beans;

public class Cart {
	private Integer cid;
	private int cuserid;
	private int cproductid;
	private int cnum;
	private String pname;
	private Double pprice;
	private String ppicloc;
	private Double psum;
	
	public Double getPprice() {
		return pprice;
	}
	public void setPprice(Double pprice) {
		this.pprice = pprice;
	}
	public Double getPsum() {
		return psum;
	}
	public void setPsum(Double psum) {
		this.psum = psum;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPpicloc() {
		return ppicloc;
	}
	public void setPpicloc(String ppicloc) {
		this.ppicloc = ppicloc;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public int getCuserid() {
		return cuserid;
	}
	public void setCuserid(int cuserid) {
		this.cuserid = cuserid;
	}
	public int getCproductid() {
		return cproductid;
	}
	public void setCproductid(int cproductid) {
		this.cproductid = cproductid;
	}
	
	@Override
	public String toString() {
		return "Cart [cid=" + cid + ", cuserid=" + cuserid + ", cproductid=" + cproductid + ", cnum=" + cnum + "]";
	}
	public Cart() {
	}
	public Cart(int cuserid, int cproductid, int cnum) {
		super();
		this.cuserid = cuserid;
		this.cproductid = cproductid;
		this.cnum = cnum;
	}
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	
	
	
	
}
