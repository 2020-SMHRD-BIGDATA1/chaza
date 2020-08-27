package controller;

public class MemberDTO {

	private String member_id;
	private String member_pw;
	private String member_gender;
	private String member_tel;
	private String member_addr;
	private String member_car_own;
	private String member_car_model;
	private String camping_case;
	private String camping_member;
	private String camping_count;
	
	
	
	
	public MemberDTO(String member_id, String member_gender, String member_tel, String member_addr,
			String member_car_own, String member_car_model, String camping_case, String camping_member,
			String camping_count) {
		super();
		this.member_id = member_id;
		this.member_gender = member_gender;
		this.member_tel = member_tel;
		this.member_addr = member_addr;
		this.member_car_own = member_car_own;
		this.member_car_model = member_car_model;
		this.camping_case = camping_case;
		this.camping_member = camping_member;
		this.camping_count = camping_count;
	}

	public MemberDTO(String member_id, String member_pw) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
	}

	public MemberDTO(String member_id, String member_pw, String member_gender, String member_tel, String member_addr,
			String member_car_own, String member_car_model, String camping_case, String camping_member,
			String camping_count) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_gender = member_gender;
		this.member_tel = member_tel;
		this.member_addr = member_addr;
		this.member_car_own = member_car_own;
		this.member_car_model = member_car_model;
		this.camping_case = camping_case;
		this.camping_member = camping_member;
		this.camping_count = camping_count;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_gender() {
		return member_gender;
	}

	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}

	public String getMember_tel() {
		return member_tel;
	}

	public void setMember_tel(String member_tel) {
		this.member_tel = member_tel;
	}

	public String getMember_addr() {
		return member_addr;
	}

	public void setMember_addr(String member_addr) {
		this.member_addr = member_addr;
	}

	public String getMember_car_own() {
		return member_car_own;
	}

	public void setMember_car_own(String member_car_own) {
		this.member_car_own = member_car_own;
	}

	public String getMember_car_model() {
		return member_car_model;
	}

	public void setMember_car_model(String member_car_model) {
		this.member_car_model = member_car_model;
	}

	public String getCamping_case() {
		return camping_case;
	}

	public void setCamping_case(String camping_case) {
		this.camping_case = camping_case;
	}

	public String getCamping_member() {
		return camping_member;
	}

	public void setCamping_member(String camping_member) {
		this.camping_member = camping_member;
	}

	public String getCamping_count() {
		return camping_count;
	}

	public void setCamping_count(String camping_count) {
		this.camping_count = camping_count;
	}
	
	
}
