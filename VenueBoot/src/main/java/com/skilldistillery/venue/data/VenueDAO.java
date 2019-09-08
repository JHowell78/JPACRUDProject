package com.skilldistillery.venue.data;

import java.util.List;

import com.skilldistillery.venue.entities.Venue;

public interface VenueDAO {
	public Venue findById(int id);
	public Venue create(Venue venue);
	public Venue update(int id, Venue venue);
	public boolean destroy(int id);
	public List<Venue> findAll();
		
	
}
