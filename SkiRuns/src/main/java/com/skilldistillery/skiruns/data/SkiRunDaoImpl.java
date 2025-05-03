package com.skilldistillery.skiruns.data;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.skiruns.entities.SkiRun;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;


@Service
@Transactional
public class SkiRunDaoImpl implements SkiRunDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public SkiRun findById(int skiRunId) {
		return em.find(SkiRun.class, skiRunId);
	}

	
	@Override
	public List<SkiRun> findAll() {
		String jpql = "SELECT s FROM SkiRun s";
		return em.createQuery(jpql, SkiRun.class)
				.getResultList();
	}

}
