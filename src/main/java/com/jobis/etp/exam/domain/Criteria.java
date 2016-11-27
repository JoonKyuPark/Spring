package com.jobis.etp.exam.domain;

public class Criteria extends Etp_ExamVO {

  private int page=1;// 처음 보일 페이지
  private int perPageNum=10;// 한페이지당 나오는 글 갯수

  public Criteria() {
    this.page = 1;
    this.perPageNum = 10;
  }

  public void setPage(int page) {

    if (page <= 0) {
      this.page = page;
      return;
    }

    this.page = page;
  }

  public void setPerPageNum(int perPageNum) {

    if (perPageNum <= 0 || perPageNum > 100) {
      this.perPageNum = 2;
      return;
    }

    this.perPageNum = perPageNum;
  }

  public int getPage() {
    return page;
  }

  public int getPageStart() {

    return (this.page - 1) * perPageNum;
  }

  public int getPerPageNum() {

    return this.perPageNum;
  }

  @Override
  public String toString() {
    return "Criteria [page=" + page + ", "
        + "perPageNum=" + perPageNum + "]";
  }
}
