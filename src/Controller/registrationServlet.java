package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.registrationDAO;
import VO.registrationVO;

/**
 * Servlet implementation class registrationServlet
 */
@WebServlet("/registrationServlet")
public class registrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registrationServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag = request.getParameter("flag");
		// System.out.println("Hellooooo..");
		if (flag.equals("insert")) {
			insert_login_detail(request, response);
		}
		if (flag.equals("verify")) {
			verify_details(request, response);
		}
		if (flag.equals("login")) {
			login_details(request, response);
		}
	}

	private void login_details(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		int uid = Integer.parseInt(request.getParameter("user_id"));
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("user_name");
		System.out.println("USER NAME ::::::" + name);
		System.out.println("User......." + uid);
		System.out.println("PWD......." + pwd);

		registrationVO regVO = new registrationVO();
		regVO.setUser_id(uid);
		regVO.setPwd(pwd);
		regVO.setName(name);

		List l = new ArrayList();
		registrationDAO regDAO = new registrationDAO();
		l = regDAO.verify_password(regVO);

		HttpSession httpsession = request.getSession();
		httpsession.setAttribute("uname", name);

		if (l.size() != 0) {
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	}

	private void verify_details(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");

		registrationVO regVO = new registrationVO();
		regVO.setEmail(email);

		List list = new ArrayList();
		registrationDAO regDAO = new registrationDAO();
		list = regDAO.verify_email(regVO);

		HttpSession httpsession = request.getSession();
		httpsession.setAttribute("verified", list);

		if (list.size() != 0) {
			response.sendRedirect("login.jsp");
		} else {
			response.sendRedirect("error.jsp");
		}
	}

	private void insert_login_detail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		Long number = Long.parseLong(request.getParameter("number"));
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String pwd = request.getParameter("pwd");
		// String repwd = request.getParameter("repwd");
		String color = request.getParameter("color");
		System.out.println("pwd : " + pwd);
		// System.out.println("repwd : "+repwd);
		// PrintWriter out = response.getWriter();

		registrationVO regVOObj = new registrationVO();
		regVOObj.setName(name);
		regVOObj.setNumber(number);
		regVOObj.setEmail(email);
		regVOObj.setDate(date);
		regVOObj.setColor(color);
		regVOObj.setPwd(pwd);

		registrationDAO regDAOObj = new registrationDAO();
		regDAOObj.insert_login_detail(regVOObj);

		response.sendRedirect("home.jsp");
	}

}
