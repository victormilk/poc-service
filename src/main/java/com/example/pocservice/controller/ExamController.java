package com.example.pocservice.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/exams")
public class ExamController {

    @GetMapping
    public ResponseEntity<?> listExams() {
        final var exams = List.of("Exam 1", "Exam 2", "Exam 3");
        return ResponseEntity.ok(exams);
    }
}
