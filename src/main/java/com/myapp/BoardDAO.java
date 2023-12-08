package com.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {
    @Autowired
    JdbcTemplate jdbcTemplate;

    public int insertBoard(BoardVO vo) {
        String sql = "insert into SchoolBoard (student, studentNumber, school, schoolNumber, location, subsidy) values ("
                + "'" + vo.getStudent() + "',"
                + "'" + vo.getStudentNumber() + "',"
                + "'" + vo.getSchool() + "',"
                + "'" + vo.getSchoolNumber() + "',"
                + "'" + vo.getLocation() + "',"
                + "'" + vo.getSubsidy()+ "')";
        return jdbcTemplate.update(sql);
    }

    public int deleteBoard(int id) {
        String sql = "delete from SchoolBoard  where id = " + id;
        return jdbcTemplate.update(sql);
    }

    public int updateBoard(BoardVO vo) {
        String sql = "update SchoolBoard set student='"
                + vo.getStudent() + "',"
                + " studentNumber ='" + vo.getStudentNumber() + "',"
                + " school ='" + vo.getSchool() + "',"
                + " schoolNumber ='" + vo.getSchoolNumber() + "',"
                + " location ='" + vo.getLocation() + "',"
                + " subsidy ='" + vo.getSubsidy() + "' where id=" + vo.getId();
        return jdbcTemplate.update(sql);
    }

    public BoardVO getBoard(int id) {
        String sql = "select * from SchoolBoard where id=" + id;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }

    public List<BoardVO> getBoardList(){
        String sql = "select * from SchoolBoard order by applyDate desc";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }
}