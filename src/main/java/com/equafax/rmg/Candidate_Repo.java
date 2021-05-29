package com.equafax.rmg;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.equafax.rmg.Candidate;

@Repository
public interface Candidate_Repo extends JpaRepository<Candidate, Long> {
	
	public Candidate findById(long candidate_id);
	
	
	

}
