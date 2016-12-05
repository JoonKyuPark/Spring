package com.jobis.etp.login.domain;

public class Etp_LoginVO {
	 private int etp_no;
	   private String etp_name;    //가입자명
	   private String etp_id;
	   private String etp_pass;
	   private String etp_tel;
	   private String etp_email;
	   private String etp_kind;
	   private String etp_registration_num;
	   private String delegator_name;
	   private String etp_field;
	   private int employee_number;
	   private String[] etp_location;
	   private int etp_capital;
	   private int etp_sales;
	   private int clip_number;
	   private String etp_image;
	   public Etp_LoginVO() {
	      super();
	   }
	   public int getEtp_no() {
	      return etp_no;
	   }
	   public void setEtp_no(int etp_no) {
	      this.etp_no = etp_no;
	   }
	   public String getEtp_name() {
	      return etp_name;
	   }
	   public void setEtp_name(String etp_name) {
	      this.etp_name = etp_name;
	   }
	   public String getEtp_id() {
	      return etp_id;
	   }
	   public void setEtp_id(String etp_id) {
	      this.etp_id = etp_id;
	   }
	   public String getEtp_pass() {
	      return etp_pass;
	   }
	   public void setEtp_pass(String etp_pass) {
	      this.etp_pass = etp_pass;
	   }
	   public String getEtp_tel() {
	      return etp_tel;
	   }
	   public void setEtp_tel(String etp_tel) {
	      this.etp_tel = etp_tel;
	   }
	   public String getEtp_email() {
	      return etp_email;
	   }
	   public void setEtp_email(String etp_email) {
	      this.etp_email = etp_email;
	   }
	   public String getEtp_kind() {
	      return etp_kind;
	   }
	   public void setEtp_kind(String etp_kind) {
	      this.etp_kind = etp_kind;
	   }
	   public String getEtp_registration_num() {
	      return etp_registration_num;
	   }
	   public void setEtp_registration_num(String etp_registration_num) {
	      this.etp_registration_num = etp_registration_num;
	   }
	   public String getDelegator_name() {
	      return delegator_name;
	   }
	   public void setDelegator_name(String delegator_name) {
	      this.delegator_name = delegator_name;
	   }
	   public String getEtp_field() {
	      return etp_field;
	   }
	   public void setEtp_field(String etp_field) {
	      this.etp_field = etp_field;
	   }
	   public int getEmployee_number() {
	      return employee_number;
	   }
	   public void setEmployee_number(int employee_number) {
	      this.employee_number = employee_number;
	   }
	   public String[] getEtp_location() {
	      return etp_location;
	   }
	   public void setEtp_location(String[] etp_location) {
	      this.etp_location = etp_location;
	   }
	   public int getEtp_capital() {
	      return etp_capital;
	   }
	   public void setEtp_capital(int etp_capital) {
	      this.etp_capital = etp_capital;
	   }
	   public int getEtp_sales() {
	      return etp_sales;
	   }
	   public void setEtp_sales(int etp_sales) {
	      this.etp_sales = etp_sales;
	   }
	   public int getClip_number() {
	      return clip_number;
	   }
	   public void setClip_number(int clip_number) {
	      this.clip_number = clip_number;
	   }
	   public String getEtp_image() {
	      return etp_image;
	   }
	   public void setEtp_image(String etp_image) {
	      this.etp_image = etp_image;
	   }
	   public Etp_LoginVO(int etp_no, String etp_name, String etp_id, String etp_pass, String etp_tel, String etp_email,
	         String etp_kind, String etp_registration_num, String delegator_name, String etp_field, int employee_number,
	         String[] etp_location, int etp_capital, int etp_sales, int clip_number, String etp_image) {
	      super();
	      this.etp_no = etp_no;
	      this.etp_name = etp_name;
	      this.etp_id = etp_id;
	      this.etp_pass = etp_pass;
	      this.etp_tel = etp_tel;
	      this.etp_email = etp_email;
	      this.etp_kind = etp_kind;
	      this.etp_registration_num = etp_registration_num;
	      this.delegator_name = delegator_name;
	      this.etp_field = etp_field;
	      this.employee_number = employee_number;
	      this.etp_location = etp_location;
	      this.etp_capital = etp_capital;
	      this.etp_sales = etp_sales;
	      this.clip_number = clip_number;
	      this.etp_image = etp_image;
	   }
	   
	   public void pass(){  //복호화
	      String c = this.etp_pass;
	      int key2= Integer.parseInt((c.substring(c.length()-1)));
	      String[] r = c.split(",");
	      String pass2 = "";
	      
	      for (int k = 0; k < r.length-1; k++) {
	         int y = Integer.parseInt(r[k]);
	         pass2 += Character.toString((char) (y - key2));

	         System.out.println(pass2);

	      }
	      this.etp_pass=pass2;
	      
	   }



}
