package com.webapp.service;

import java.util.ArrayList;
import java.util.List;

import com.webapp.todo.Todo;

public class TodoService {
	
	private static List<Todo> todos = new ArrayList();
	
	static {
		todos.add(new Todo("Learn Web Application"));
		todos.add(new Todo("Learn Spring"));
		todos.add(new Todo("Learn Spring MVC"));
		todos.add(new Todo("Learn Servlet"));
	}
	
	public List<Todo> retriveTodos(){
		return todos;
	}
	
	public void addTodo(String todo) {
		todos.add(new Todo(todo));
	}
	
	public void deleteTodo(String todo) {
		todos.remove(new Todo(todo));
	}
}
