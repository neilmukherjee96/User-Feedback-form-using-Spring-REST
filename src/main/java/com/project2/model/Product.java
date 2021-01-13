package com.project2.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String name;
	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	
	private List<Feedback> feedbacks;
	
//	public void addFeedback( Feedback feedback) {
//		feedbacks.add(feedback);
//	}
//	public void removeFeedback(Feedback feedback) {
//		feedbacks.remove(feedback);
//	}

}
