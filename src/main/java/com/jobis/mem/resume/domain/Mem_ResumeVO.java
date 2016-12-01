package com.jobis.mem.resume.domain;

public class Mem_ResumeVO {
   private int resume_no;
   private String resume_title;
   private int hope_income;
   private String volun_field;
   private String resume_date;
   private String self_intro_cont;
   private String self_intro_date;
   private String resume_img;
   private int member_no;
   private String resume_open;

   public Mem_ResumeVO() {
   }

   public Mem_ResumeVO(int resume_no, String resume_title, int hope_income, String volun_field, String resume_date,
         String self_intro_cont, String self_intro_date, String resume_img, int member_no, String resume_open) {
      super();
      this.resume_no = resume_no;
      this.resume_title = resume_title;
      this.hope_income = hope_income;
      this.volun_field = volun_field;
      this.resume_date = resume_date;
      this.self_intro_cont = self_intro_cont;
      this.self_intro_date = self_intro_date;
      this.resume_img = resume_img;
      this.member_no = member_no;
      this.resume_open = resume_open;
   }

   public int getResume_no() {
      return resume_no;
   }

   public void setResume_no(int resume_no) {
      this.resume_no = resume_no;
   }

   public String getResume_title() {
      return resume_title;
   }

   public void setResume_title(String resume_title) {
      this.resume_title = resume_title;
   }

   public int getHope_income() {
      return hope_income;
   }

   public void setHope_income(int hope_income) {
      this.hope_income = hope_income;
   }

   public String getVolun_field() {
      return volun_field;
   }

   public void setVolun_field(String volun_field) {
      this.volun_field = volun_field;
   }

   public String getResume_date() {
      return resume_date;
   }

   public void setResume_date(String resume_date) {
      this.resume_date = resume_date;
   }

   public String getSelf_intro_cont() {
      return self_intro_cont;
   }

   public void setSelf_intro_cont(String self_intro_cont) {
      this.self_intro_cont = self_intro_cont;
   }

   public String getSelf_intro_date() {
      return self_intro_date;
   }

   public void setSelf_intro_date(String self_intro_date) {
      this.self_intro_date = self_intro_date;
   }

   public String getResume_img() {
      return resume_img;
   }

   public void setResume_img(String resume_img) {
      this.resume_img = resume_img;
   }

   public int getMember_no() {
      return member_no;
   }

   public void setMember_no(int member_no) {
      this.member_no = member_no;
   }

   public String getResume_open() {
      return resume_open;
   }

   public void setResume_open(String resume_open) {
      this.resume_open = resume_open;
   }

   
}
     