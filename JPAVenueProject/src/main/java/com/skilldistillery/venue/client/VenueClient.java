package com.skilldistillery.venue.client;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.venue.entities.Venue;

public class VenueClient {

	public static void main(String[] args) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("VenuePU");
		EntityManager em = emf.createEntityManager();
		Venue venue = em.find(Venue.class, 6);
	
		System.out.println(venue);
		em.close();
	}

}
