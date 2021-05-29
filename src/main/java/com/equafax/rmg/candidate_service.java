package com.equafax.rmg;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.equafax.rmg.Candidate_Repo;

@Service
@Transactional
public class candidate_service {
	
	@Autowired
	private  final Candidate_Repo cand_repo;
	
	public candidate_service(Candidate_Repo cand_repo) {
		super();
		this.cand_repo = cand_repo;
	}

	public List<Candidate> show_all_candidates()
	{	
		List<Candidate> candidates = new ArrayList<Candidate>();
		
		for(Candidate candidate : cand_repo.findAll() )
		{
			candidates.add(candidate);
		}
	
		return candidates;
	}
	
	
	public void saveMyCandidate(Candidate can ) {
		cand_repo.save(can);
	}
	
	
	
	public void deleteMyUser(long candidate_id) {
		cand_repo.deleteById(candidate_id);
	}
	
	
	public Candidate findbyidno(long candidate_id)
	{
		Candidate can = cand_repo.findById(candidate_id);
		
		return can;
		
	}
	
	
	

}