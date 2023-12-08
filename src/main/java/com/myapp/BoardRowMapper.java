package com.myapp;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class BoardRowMapper implements RowMapper<BoardVO> {
    @Override
    public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException{
        BoardVO vo = new BoardVO();
        vo.setId(rs.getInt("id"));
        vo.setLocation(rs.getString("location"));
        vo.setSchool(rs.getString("school"));
        vo.setStudent(rs.getString("student"));
        vo.setStudentNumber(rs.getString("studentNumber"));
        vo.setSchoolNumber(rs.getString("schoolNumber"));
        vo.setSubsidy(rs.getString("subsidy"));
        vo.setApplyDate(rs.getDate("applyDate"));
        return vo;
    }
}