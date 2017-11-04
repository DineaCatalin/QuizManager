package Proiect731.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Proiect731.entity.Quiz;
import Proiect731.repository.QuizRepo;

@Service
public class QuizService {

	@Autowired
	private QuizRepo quizRepo;

	public Iterable<Quiz> getAllQuizuri() {
		return quizRepo.findAll();
	}

	public Quiz getQuiz(int id) {
		return quizRepo.findOne(id);
	}

	public Quiz saveOrUpdateQuiz(Quiz quiz) {
		return quizRepo.save(quiz);
	}

	public void deleteQuiz(int id) {
		quizRepo.delete(id);
	}
}
