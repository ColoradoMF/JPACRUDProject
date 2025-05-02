package com.skilldistillery.skiruns.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class SkiRunTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private SkiRun run;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPASkiRuns");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		run = em.find(SkiRun.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		run = null;
	}

	@Test
	void test_SkiRun_entity_mapping() {
		assertNotNull(run);
		assertEquals("Spaulding Bowl", run.getName());
	}

}
