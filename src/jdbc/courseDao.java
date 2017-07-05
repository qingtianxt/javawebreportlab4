package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.course;;

public class courseDao {
	public boolean insert(course s) throws SQLException
		{
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			boolean flag;
			try{
					flag=false;
					conn = DBUtil.getDBConnection();
					String sql="insert into course values(?,?,?)";
					pstmt=conn.prepareStatement(sql);
					pstmt.setString(1, s.getNum());
					pstmt.setString(2, s.getName());
					pstmt.setString(3, s.getScore());
					int n=pstmt.executeUpdate();
					if(n>=1)
					{
						flag=true;
					}
				}finally {
					DBUtil.closeDB(conn, pstmt, rs);
				}
		return flag;
	}
	public boolean delete(String s) throws SQLException
	{

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean flag;
		try{
			flag=false;
			conn = DBUtil.getDBConnection();
			String sql="delete from course where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, s);
			int n=pstmt.executeUpdate();
			if(n>=1)
			{
				flag=true;
			}
		}finally {
			DBUtil.closeDB(conn, pstmt, rs);
		}
		return flag;
	}
	public boolean update(course s) throws SQLException
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean flag=false;
		String num2=s.getNum();
		try{
			conn = DBUtil.getDBConnection();
			String sql="update course set num=?,name=?,score=? where num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,s.getNum());
			pstmt.setString(2, s.getName());
			pstmt.setString(3, s.getScore());
			pstmt.setString(4, num2);
			int n = pstmt.executeUpdate();
			if(n>=1)
			{
				flag=true;
			}
		}finally {
			DBUtil.closeDB(conn, pstmt, rs);
		}
		return flag;
	}
	public course selectone(String num) throws SQLException
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean flag=false;
		course s = null;
		try{
			conn = DBUtil.getDBConnection();
			String sql="select * from course where num=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				s=new course();
				s.setNum(rs.getString("num"));
				s.setName(rs.getString("name"));
				s.setScore(rs.getString("score"));
			}
		}finally {
			DBUtil.closeDB(conn, pstmt, rs);
		}
		return s;
	}
	
	public List<course> selectAll()
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<course> list = new ArrayList<course>();
		
		conn = DBUtil.getDBConnection();
		try {
			pstmt = conn.prepareStatement("select * from course");
			rs = pstmt.executeQuery();
			while(rs.next())
			{
				course s = new course();
				s.setNum(rs.getString("num"));
				s.setName(rs.getString("name"));
				s.setScore(rs.getString("score"));
				list.add(s);
			}
			DBUtil.closeDB(conn, pstmt, rs);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	
}
