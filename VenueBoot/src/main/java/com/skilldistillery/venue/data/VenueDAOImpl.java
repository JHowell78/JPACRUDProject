package com.skilldistillery.venue.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.venue.entities.Venue;

@Transactional
@Service
public class VenueDAOImpl implements VenueDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public Venue findById(int id) {
		return em.find(Venue.class, id);
	}

	@Override
	public Venue create(Venue venue) {
		em.persist(venue);
		em.flush();
		return venue;
	}

	@Override
	public Venue update(int id, Venue venue) {
		Venue update = em.find(Venue.class, id);
		update.setName(venue.getName());
		update.setAddress(venue.getAddress());
		update.setCity(venue.getCity());
		update.setState(venue.getState());
		update.setZip(venue.getZip());
		update.setCapacity(venue.getCapacity());
		update.setEnvironment(venue.getEnvironment());
		update.setDescription(venue.getDescription());
		return update;
	}

	@Override
	public boolean destroy(int id) {
		Venue venueRemove = em.find(Venue.class, id);
		try {
			em.remove(venueRemove);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public List<Venue> findAll() {
		String qry = "Select venue From Venue venue ";
		List<Venue> all = em.createQuery(qry, Venue.class).getResultList();
		return all;
	}

}
