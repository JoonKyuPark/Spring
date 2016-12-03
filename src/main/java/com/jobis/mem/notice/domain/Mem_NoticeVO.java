package com.jobis.mem.notice.domain;

public class Mem_NoticeVO {
   
   int notice_no;
   String notice_type;
   String notice_name;
   String notice_date;
   String notice_check;
   int member_no;
   int smart_match_no;
   int exam_no;

   
   public Mem_NoticeVO(){
      
   }
   

   public Mem_NoticeVO(int notice_no, String notice_type, String notice_name, String notice_date, String notice_check,
         int member_no, int mem_submit_no, int exam_no, int smart_match_no) {
      super();
      this.notice_no = notice_no;
      this.notice_type = notice_type;
      this.notice_name = notice_name;
      this.notice_date = notice_date;
      this.notice_check = notice_check;
      this.member_no = member_no;
      this.exam_no = exam_no;
      this.smart_match_no = smart_match_no;
   }




   public int getNotice_no() {
      return notice_no;
   }

   public void setNotice_no(int notice_no) {
      this.notice_no = notice_no;
   }

   public String getNotice_type() {
      return notice_type;
   }

   public void setNotice_type(String notice_type) {
      this.notice_type = notice_type;
   }

   public String getNotice_name() {
      return notice_name;
   }

   public void setNotice_name(String notice_name) {
      this.notice_name = notice_name;
   }

   public String getNotice_date() {
      return notice_date;
   }

   public void setNotice_date(String notice_date) {
      this.notice_date = notice_date;
   }

   public String getNotice_check() {
      return notice_check;
   }

   public void setNotice_check(String notice_check) {
      this.notice_check = notice_check;
   }

   public int getMember_no() {
      return member_no;
   }

   public void setMember_no(int member_no) {
      this.member_no = member_no;
   }


   public int getExam_no() {
      return exam_no;
   }

   public void setExam_no(int exam_no) {
      this.exam_no = exam_no;
   }

   public int getSmart_match_no() {
      return smart_match_no;
   }

   public void setSmart_match_no(int smart_match_no) {
      this.smart_match_no = smart_match_no;
   }
   
   

}