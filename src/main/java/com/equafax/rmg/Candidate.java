package com.equafax.rmg;

import java.sql.Date;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="candidate_details")
public class Candidate {
	
	@Id
	long id;
	long swon_number;
	String it_manager;
	String team;
	String current_location;
	Date otl_start_date;
	Date otl_end_date;
	String status;
	long otl_project_number;
	long otl_task;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getSwon_number() {
		return swon_number;
	}
	public void setSwon_number(long swon_number) {
		this.swon_number = swon_number;
	}
	public String getIt_manager() {
		return it_manager;
	}
	public void setIt_manager(String it_manager) {
		this.it_manager = it_manager;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getCurrent_location() {
		return current_location;
	}
	public void setCurrent_location(String current_location) {
		this.current_location = current_location;
	}
	public Date getOtl_start_date() {
		return otl_start_date;
	}
	public void setOtl_start_date(Date otl_start_date) {
		this.otl_start_date = otl_start_date;
	}
	public Date getOtl_end_date() {
		return otl_end_date;
	}
	public void setOtl_end_date(Date otl_end_date) {
		this.otl_end_date = otl_end_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public long getOtl_project_number() {
		return otl_project_number;
	}
	public void setOtl_project_number(long otl_project_number) {
		this.otl_project_number = otl_project_number;
	}
	public long getOtl_task() {
		return otl_task;
	}
	public void setOtl_task(long otl_task) {
		this.otl_task = otl_task;
	}
	@Override
	public String toString() {
		return "Candidate [id=" + id + ", swon_number=" + swon_number + ", it_manager=" + it_manager + ", team=" + team
				+ ", current_location=" + current_location + ", otl_start_date=" + otl_start_date + ", otl_end_date="
				+ otl_end_date + ", status=" + status + ", otl_project_number=" + otl_project_number + ", otl_task="
				+ otl_task + "]";
	}
	public Candidate(long id, long swon_number, String it_manager, String team, String current_location,
			Date otl_start_date, Date otl_end_date, String status, long otl_project_number, long otl_task) {
		super();
		this.id = id;
		this.swon_number = swon_number;
		this.it_manager = it_manager;
		this.team = team;
		this.current_location = current_location;
		this.otl_start_date = otl_start_date;
		this.otl_end_date = otl_end_date;
		this.status = status;
		this.otl_project_number = otl_project_number;
		this.otl_task = otl_task;
	}
	public Candidate() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	
	
	
	
}
	