package com.myapp.board;

import java.util.Date;

public class BoardVO {
    private int id;
    private String location;
    private String school;
    private String student;
    private String schoolNumber;
    private String studentNumber;
    private String subsidy;
    private Date applyDate;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    public String getSchool() {
        return school;
    }
    public void setSchool(String school) {
        this.school = school;
    }
    public String getStudentNumber() {
        return studentNumber;
    }
    public void setStudentNumber(String studentNumber) {
        this.studentNumber = studentNumber;
    }
    public String getStudent() {
        return student;
    }
    public void setStudent(String student) {
        this.student = student;
    }
    public String getSchoolNumber() {
        return schoolNumber;
    }
    public void setSchoolNumber(String schoolNumber) {
        this.schoolNumber = schoolNumber;
    }
    public String getSubsidy() {
        return subsidy;
    }
    public void setSubsidy(String subsidy) {
        this.subsidy = subsidy;
    }
    public Date getApplyDate() {
        return applyDate;
    }
    public void setApplyDate(Date applyDate) {
        this.applyDate = applyDate;
    }
    }
