package com.jobis.mem.recruit.domain;

public class Mem_RecruitCriteria {

  private int page=1;//페이지
  private int perPageNum=2;//한페이지당 나오는 글갯수

  public Mem_RecruitCriteria() {
    this.page = 1;
    this.perPageNum = 6;
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

  // method for MyBatis SQL Mapper -
  public int getPageStart() {//    곗  곕    곗 

    return (this.page - 1) * perPageNum;
  }

  // method for MyBatis SQL Mapper
  public int getPerPageNum() {

    return this.perPageNum;
  }

  @Override
  public String toString() {
    return "Criteria [page=" + page + ", "
        + "perPageNum=" + perPageNum + "]";
  }
}
