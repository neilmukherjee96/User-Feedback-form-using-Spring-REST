package com.project2.dao;

import org.springframework.data.repository.CrudRepository;

import com.project2.model.Feedback;

public interface FeedbackDAO extends CrudRepository<Feedback, Integer> {

}
