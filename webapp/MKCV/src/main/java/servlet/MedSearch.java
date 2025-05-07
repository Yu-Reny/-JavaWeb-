package servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.mchange.io.impl.EndsWithFilenameFilter;
import com.mysql.cj.protocol.Resultset;

import dao.MedDB;
import pojo.Med;
import utils.DbUtil;

/**
 * Servlet implementation class MedSearch
 */
@WebServlet("/MedSearch")
public class MedSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DbUtil dbUtil=new DbUtil();
    public MedSearch() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String keyString=request.getParameter("key");
		response.setContentType("text/html;charset=utf-8");
		if (keyString.equals("")) {
			response.getWriter().print("<script language='javascript'>alert('请在搜索框中输入内容');window.history.back();</script>");
			
		}else {
			MedDB medDB=new MedDB();
			try {
				ResultSet rs=medDB.name(dbUtil.getConnection(), keyString);
				if (rs.last()) {
					if (rs.getRow()>1) {//判断是否有多个结果
						rs.first();
						List<String> list=new ArrayList<String>();
						while (rs.next()) {
							list.add(rs.getString("title"));
						}
						request.setAttribute("list", list);

						String url ="/jsp/fussySearch.jsp";
						request.setCharacterEncoding("utf-8");
						getServletContext().getRequestDispatcher(url).forward(request, response);
						
					}else {
						Med med=new Med();
						med.setPic(rs.getString("pic"));
						med.setTitle(rs.getString("title"));
						med.setUsego(rs.getString("usego"));
						med.setI(rs.getString("i"));
						request.setAttribute("med", med);

						String url ="/jsp/searchMediResult.jsp";
						request.setCharacterEncoding("utf-8");
						getServletContext().getRequestDispatcher(url).forward(request, response);
						
					}
				}else {
			           response.getWriter().print("<script language='javascript'>alert('没查询到你想要的的相关药品');window.history.back();</script>");
				}
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
		           response.getWriter().print("<script language='javascript'>alert('没查询到你想要的的相关药品');window.history.back();</script>");
			}
		}
		
	}

}
