package com.skilldistillery.skiruns.data;

import java.util.List;

import com.skilldistillery.skiruns.entities.SkiRun;

public interface SkiRunDAO {
	
	SkiRun findById(int skiRunId);
	List<SkiRun> findAll();

}