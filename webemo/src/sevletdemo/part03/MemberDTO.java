package sevletdemo.part03;

public class MemberDTO {
	private String fid;
	private String fpass;
	
	public MemberDTO() {
		// TODO Auto-generated constructor stub
	}

	public String getFid() {
		return fid;
	}

	public void setFid(String fid) {
		this.fid = fid;
	}

	public String getFpass() {
		return fpass;
	}

	public void setFpass(String fpass) {
		this.fpass = fpass;
	}
	
	public String toString() {
		return String.format("%s %s", fid, fpass);
	}
}
