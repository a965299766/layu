package vip.dulaogou.beans;

import java.sql.Date;

public class Order {
	private Integer oid;
	private int ouserid;
	private int oproductid;
	private int onum;
	private Date odate;
	
	private String pname;
	private Double pprice;
	private Double psum;
	private String ppicloc;
	public String getPpicloc() {
		return ppicloc;
	}
	public void setPpicloc(String ppicloc) {
		this.ppicloc = ppicloc;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
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
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public int getOuserid() {
		return ouserid;
	}
	public void setOuserid(int ouserid) {
		this.ouserid = ouserid;
	}
	public int getOproductid() {
		return oproductid;
	}
	public void setOproductid(int oproductid) {
		this.oproductid = oproductid;
	}
	public int getOnum() {
		return onum;
	}
	public void setOnum(int onum) {
		this.onum = onum;
	}
	public Date getOdate() {
		return odate;
	}
	public void setOdate(Date odate) {
		this.odate = odate;
	}
	@Override
	public String toString() {
		return "Order [oid=" + oid + ", ouserid=" + ouserid + ", oproductid=" + oproductid + ", onum=" + onum
				+ ", odate=" + odate + "]";
	}
	public Order() {
	}
	public Order(int ouserid, int oproductid, int onum, Date odate) {
		super();
		this.ouserid = ouserid;
		this.oproductid = oproductid;
		this.onum = onum;
		this.odate = odate;
	}
	
	
}
