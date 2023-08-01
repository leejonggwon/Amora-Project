package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

/**
 * Servlet implementation class Ex02GSON
 */
@WebServlet("/GSON")
public class Ex02GSON extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
    */
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      JsonObject jsonObj = new JsonObject();
      jsonObj.addProperty("data","Hello");
      jsonObj.addProperty("data2","객체생성성공");
      
      System.out.println(jsonObj);
      
      //응답할 형식을 지정 + 한글데이터가 깨지지않도록 설정!
      response.setContentType("application/json; charset=UTF-8");
      
      
      PrintWriter out = response.getWriter();
   
      out.print(jsonObj);
      
      
      
   }

}