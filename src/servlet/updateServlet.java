package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.course;
import jdbc.courseDao;


/**
 * Servlet implementation class updateServlet
 */
@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateServlet() {
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
		response.setContentType("text/html;charset=utf-8");
		String num=request.getParameter("num");
		String name=request.getParameter("name");
		String score=request.getParameter("score");
//		System.out.println(num+" "+name+" "+score);
		course s =new course();
		s.setNum(num);
		s.setName(name);
		s.setScore(score);
		boolean flag=false;
		String rs="";
		
		
		courseDao quote = new courseDao();
		try {
			course s1 = quote.selectone(num);
			if(s1!=null&&s1.getNum().equals(num))
			{
				flag=quote.update(s);
				if(flag==true)
				{
					rs="修改成功";
				}
				else
				{
					rs="修改失败";
				}
			}
			else
			{
				rs="不存在这个人";
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		request.getSession().setAttribute("jud", rs);
		response.sendRedirect(request.getContextPath()+"/homePage.jsp");
	}

}
