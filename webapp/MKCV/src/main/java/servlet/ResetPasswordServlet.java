package servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import dao.UserDB;
import jakarta.servlet.http.HttpSession;
import pojo.User;

/**
 * Servlet implementation class ResetPasswordServlet
 */
@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("username"); 
		String password = request.getParameter("password");
		String password2 = request.getParameter("repassword");

		if (username.equals("")) {response.getWriter().print("<script language='javascript'>alert('请输入用户名');window.history.back();</script>");}
		else if (password.equals("")) {response.getWriter().print("<script language='javascript'>alert('请输入密码');window.history.back();</script>");}
		else if (password2.equals("")) {response.getWriter().print("<script language='javascript'>alert('请输入重复密码');window.history.back();</script>");}
		else {if(password.equals(password2))
		{
			if( UserDB.UserExists(username) ) {
				User user = new User();
				user.setUsername (username); 
				user.setPassword(password);
				UserDB.update(user);
				response.getWriter().print("<script language='javascript'>alert('更新密码成功！');window.location.href='/MKCV/jsp/login.jsp';</script>");
			}
			else
			{
		        try {
					response.getWriter().print("<script language='javascript'>alert('该用户名不存在');window.history.back();</script>");
				} catch (IOException e) {
					// TODO 自动生成的 catch 块
					e.printStackTrace();
				}}}
		else 
		{
	        try {
				response.getWriter().print("<script language='javascript'>alert('两次密码不一致');window.history.back();</script>");
			} catch (IOException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}}}}}
