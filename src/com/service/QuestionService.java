package com.service;

import java.util.List;

import com.Question;

public interface QuestionService {

	List<Question> findQuestionsByPaperId(int paperId);
	int addQuestions(Question question);
}
