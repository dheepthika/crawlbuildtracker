package crawlBuild;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


import entities.*;
import model.*;

/**
 * Servlet implementation class AccountController
 */
public class AccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		HttpSession session = request.getSession();
		
		if(action==null) {
			account Account =checkCookie(request);
			if (Account==null) {
				request.getRequestDispatcher("loginpage.jsp").forward(request, response);
			}else {
				Accountmodel accModel= new Accountmodel();
				if(accModel.login(Account.getUsername(), Account.getPassword())) {
					session.setAttribute("username", Account.getUsername());
					request.getRequestDispatcher("homepage.jsp").forward(request, response);
				}else {
					request.setAttribute("error", "Account is Invalid");
					request.getRequestDispatcher("loginpage.jsp").forward(request, response);
				}
			}
		}else {
			if (action.equalsIgnoreCase("logout")) {
				session.removeAttribute("username");
				Cookie[] cookies = request.getCookies();
				for (Cookie ck:cookies) {
					if (ck.getName().equalsIgnoreCase("username")) {
						ck.setMaxAge(0);
						response.addCookie(ck);
					}
					if (ck.getName().equalsIgnoreCase("password")) {
						ck.setMaxAge(0);
						response.addCookie(ck);
					}
				}
				request.getRequestDispatcher("loginpage.jsp").forward(request, response);
			}
		}
		
	}
	
	private account checkCookie(HttpServletRequest request) {
		Cookie[] cookies=request.getCookies();
		account Account = null;
		if (cookies ==null) {
			return null;
		}else {
			String username="",password="";
			for (Cookie ck : cookies) {
				if (ck.getName().equalsIgnoreCase("username"))
					username=ck.getValue();
				if (ck.getName().equalsIgnoreCase("password"))
					password=ck.getValue();				
			}
			if (!username.isEmpty() && !password.isEmpty()) 
				Account = new account(username,password);			
		}
		return Account;
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		HttpSession session = request.getSession();
		Accountmodel accModel = new Accountmodel();
		if (action==null) {
			String username=request.getParameter("username").trim();
			String password=request.getParameter("password").trim();
			boolean remember = request.getParameter("rememberme")!=null;
			if (accModel.login(username,password)) {
				session.setAttribute("username", username);
				if(remember) {
					Cookie ckUsername =new Cookie("username",username);
					ckUsername.setMaxAge(3600);
					response.addCookie(ckUsername);
					Cookie ckPassword =new Cookie("password",password);
					ckPassword.setMaxAge(3600);
					response.addCookie(ckPassword);
				}
				request.getRequestDispatcher("homepage.jsp").forward(request, response);
			}else {
				request.setAttribute("error", "Account is Invalid");
				request.getRequestDispatcher("loginpage.jsp").forward(request, response);	
			}
			
		}else {
			
		}
	}

}
