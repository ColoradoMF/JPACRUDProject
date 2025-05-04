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
	
	@Override
	public SkiRun addSkiRun(SkiRun skirun) {
		em.persist(skirun);
		return skirun;
	}
	
	@Override
	public SkiRun updateSkiRun(int Id, SkiRun skiRun) {
		SkiRun managedSkiRun = em.find(SkiRun.class, Id);
		managedSkiRun.setName(skiRun.getName());
		managedSkiRun.setArea(skiRun.getArea());
		managedSkiRun.setImageUrl(skiRun.getImageUrl());
		managedSkiRun.setVertical(skiRun.getVertical());
		managedSkiRun.setRating(skiRun.getRating());
		managedSkiRun.setLiftAccess(skiRun.getLiftAccess());
		managedSkiRun.setDescription(skiRun.getDescription());
		managedSkiRun.setLatitude(skiRun.getLatitude());
		managedSkiRun.setLongitude(skiRun.getLongitude());
		managedSkiRun.setState(skiRun.getState());
		managedSkiRun.setCountry(skiRun.getCountry());
		
		return managedSkiRun;
	}
	
	@Override
	public void deleteSkiRun(int Id) {
		SkiRun managedSkiRun = em.find(SkiRun.class, Id);		
		
		em.remove(managedSkiRun);
		
	}
	
	

}
