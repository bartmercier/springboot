package com.example.demo.controller;

import com.example.demo.model.Message;
import com.example.demo.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/messages")
@CrossOrigin(origins = "http://localhost:4200")
public class MessageController {

    @Autowired
    private MessageRepository messageRepository;

    @GetMapping
    public List<Message> getAllMessages() {
        return messageRepository.findAll();
    }

    @PostMapping
    public Message createMessage(@RequestBody Message message) {
        return messageRepository.save(message);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Message> getMessageById(@PathVariable Long id) {
        return messageRepository.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
} 