package com.skilldistillery.skiruns.data;

import java.util.List;

import com.skilldistillery.skiruns.entities.SkiRun;

public interface SkiRunDAO {
	
	SkiRun findById(int skiRunId);
	List<SkiRun> findAll();
	SkiRun addSkiRun(SkiRun skirun);
	void deleteSkiRun(int Id);
	SkiRun updateSkiRun(int Id, SkiRun skirun);
	List<SkiRun> findByKeyword(String keyword);

}