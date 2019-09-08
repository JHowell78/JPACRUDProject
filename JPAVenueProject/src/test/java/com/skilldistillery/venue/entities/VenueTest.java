package com.skilldistillery.venue.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class VenueTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Venue venue;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("VenuePU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		venue = em.find(Venue.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		venue = null;
	}

	@Test
	public void test_Venue_Mapping() {
		assertEquals(1, venue.getId());
		assertEquals("Red Rocks", venue.getName());
		assertEquals("18300 West Alameda Parkway", venue.getAddress());
		assertEquals("Morrison", venue.getCity());
		assertEquals("CO", venue.getState());
		assertEquals(80465, venue.getZip());
		assertEquals(9450, venue.getCapacity());
		assertEquals("Amphitheater", venue.getEnvironment());
		assertEquals(
				"Situated in the heart of Morrison, Colorado the Red Rocks Amphitheatre is a great place to see some of the biggest and best in the music industry. With a uniquely located stage surrounded by incredible red rocks that tower above the seating areas and views of the sky and surrounding areas makes it simply breathtaking!",
				venue.getDescription());

	}

}
