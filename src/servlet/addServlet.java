package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.course;
import jdbc.courseDao;

/**
 * Servlet implementation class addServlet
 */
@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String num=request.getParameter("num");
		String name=request.getParameter("name");
		String score=request.getParameter("score");
		course s= new course();
		s.setNum(num);
		s.setName(name);
		s.setScore(score);
		courseDao s1 = new courseDao();
		boolean flag=true;
		try { 
			String jud="";
			courseDao quote = new courseDao();
			course s2 = quote.selectone(num);
			if(s2!=null&&s2.getNum().equals(num))
			{
				jud="已存在这个人";
			}
			else
			{
				flag=s1.insert(s);
				
				if(flag==true)
				{
					jud="添加成功";
				}
				else
				{
					jud="添加失败";
				}
			}
			request.getSession().setAttribute("jud",jud);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//request.getRequestDispatcher("choose.jsp").forward(request, response)
		response.sendRedirect(request.getContextPath()+"/homePage.jsp");
	}

}
