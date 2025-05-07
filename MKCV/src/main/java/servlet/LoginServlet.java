package servlet;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import pojo.User;
import dao.UserDB;
/**
 * Servlet implementation class Login
 */
@WebServlet("/LoginServlet")//读取/LoginServlet完整路径
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String message="";//定义一个变量
    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//设置编码
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//获取登入的信息(姓名和密码)
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (username.equals("")) {
			response.getWriter().print("<script language='javascript'>alert('请输入用户名');window.history.back();</script>");
		}else if (password.equals("")) {
			response.getWriter().print("<script language='javascript'>alert('请输入密码');window.history.back();</script>");
		}
		else {
			User user = UserDB.selectUser(username);
			if(user != null) {
				//用户存在,比较密码
				if(user.getPassword().equals(password)) {

					response.getWriter().print("<script language='javascript'>alert('登录成功');window.location.href='/MKCV/jsp/forum.jsp';</script>");
				}
				else {
					message = "密码不正确！";
					response.getWriter().print("<script language='javascript'>alert('密码不正确！');window.location.href='/MKCV/jsp/login.jsp';</script>");
				}
			}
			else {
				message = "用户不存在！";
				response.getWriter().print("<script language='javascript'>alert('用户不存在！');window.location.href='/MKCV/jsp/login.jsp';</script>");
			}
		}
	}	
}