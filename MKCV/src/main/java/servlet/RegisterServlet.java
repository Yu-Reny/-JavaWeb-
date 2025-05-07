package servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterServlet
 */
import pojo.User;
import dao.UserDB;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String message ="";
       
    public RegisterServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("username"); 
		String password = request.getParameter("password");
		String password2 = request.getParameter("repassword");
		String tel=request.getParameter("number");
		String email = request.getParameter("email");
		if (username.equals("")) {response.getWriter().print("<script language='javascript'>alert('请输入用户名');window.history.back();</script>");}
		else if (password.equals("")) {response.getWriter().print("<script language='javascript'>alert('请输入密码');window.history.back();</script>");}
		else if (password2.equals("")) {response.getWriter().print("<script language='javascript'>alert('请输入重复密码');window.history.back();</script>");}
		else if (email.equals("")) {response.getWriter().print("<script language='javascript'>alert('请输入邮箱');window.history.back();</script>");}
		else if (tel==null) {response.getWriter().print("<script language='javascript'>alert('请输入电话');window.history.back();</script>");}
		else {User user = new User();
		user.setUsername (username); 
		user.setPassword(password);
		user.setEmail(email);
		user.setTel(tel);
		if(password.equals(password2))
		{
			if( !UserDB.UserExists(username) ) {
				UserDB.insert(user);
				response.getWriter().print("<script language='javascript'>alert('注册成功');window.location.href='/MKCV/jsp/login.jsp';</script>");
			}
			else
			{
				   response.setContentType("text/html;charset=utf-8");
		           try {
					response.getWriter().print("<script language='javascript'>alert('该用户名已被占用');window.location.href='/MKCV/jsp/register.jsp';</script>");
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		else 
		{
			   response.setContentType("text/html;charset=utf-8");
	           try {
				response.getWriter().print("<script language='javascript'>alert('两次密码不一致');window.location.href='/MKCV/jsp/register.jsp';</script>");
			} catch (IOException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
			
		}
	}
	
		
}
