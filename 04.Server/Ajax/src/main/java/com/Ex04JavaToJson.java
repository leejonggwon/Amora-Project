package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.model.coffeeDTO;

/**
 * Servlet implementation class Ex04JavaToJson
 */
@WebServlet("/JavaToJson")
public class Ex04JavaToJson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		ArrayList<coffeeDTO> list = new ArrayList<>();
		
		list.add(new coffeeDTO("우유",1000,"M"));
		list.add(new coffeeDTO("코코아",1000,"L"));
		list.add(new coffeeDTO("밀크커피",1000,"M"));
		list.add(new coffeeDTO("블랙커피",1000,"M"));
		list.add(new coffeeDTO("설탕커피",1000,"M"));
		
		
		
		Gson gson = new Gson();
		 String jsonArr = gson.toJson(list);
		
		System.out.println(jsonArr);
		
	}

}
