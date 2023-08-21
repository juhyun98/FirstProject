package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDTO;
import com.model.dbDAO;

@WebServlet("/communityDeleteAction")
public class communityDeleteAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String commuNum = request.getParameter("commuNum");
		int intcommuNum = Integer.parseInt(commuNum);
		HttpSession session = request.getSession(); // 세션 객체 얻기
		MemberDTO info = (MemberDTO) session.getAttribute("info"); // 세션 데이터 받기
		
		if (info.getMember_id() == null) {
			response.sendRedirect("community.jsp");
		} else {
			dbDAO dbdao = new dbDAO();
			dbdao.deleteCommunity(intcommuNum);
			response.sendRedirect("community.jsp");
		}
	
	
	}
		
		
		
	}

