package vip.dulaogou.beans;

public class User {
	private Integer uid;
	private String uname;
	private String upassword;
	private String uemail;
	private String uphone;
	private String uaddress;
	public Integer getUid() {
		return uid;
	}
	public void setUid(Integer uid){
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	
	public User(String uname, String upassword, String uemail, String uphone, String uaddress) {
		super();
		this.uname = uname;
		this.upassword = upassword;
		this.uemail = uemail;
		this.uphone = uphone;
		this.uaddress = uaddress;
	}
	public User() {
		
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upassword=" + upassword + ", uemail=" + uemail + ", uphone="
				+ uphone + ", uaddress=" + uaddress + "]";
	}
	public String getUaddress() {
		return uaddress;
	}
	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}
	
	
	
	
}
