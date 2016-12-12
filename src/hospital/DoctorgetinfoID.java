package hospital;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class DoctorgetinfoID {
	private Doctor dc = null;
	public Doctor getDc()
	{
		return dc;
	}
	private String doctorID;//?
	public void setDoctorID(String doctorid)
	{
		this.doctorID = doctorid;
	}
	public String getDoctorID()
	{
		return doctorID;
	}
	
	public String execute()
	{
	try{
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("成功连接到数据库！");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/selfillness","root","123456");
		System.out.println(doctorID);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from Doctor where DoctorID="+"\""+doctorID+"\"");
		dc = new Doctor();
		if(rs.next())
		{
			System.out.println("找到该医生");
			rs.previous();
			while(rs.next())
	        {
	        	System.out.println(rs.getString(1));
	        	System.out.println(rs.getString(2));
	        	System.out.println(rs.getInt(3));
	        	System.out.println(rs.getString(4));
	        	System.out.println(rs.getString(5));
	        	System.out.println(rs.getString(6));
	        	System.out.println(rs.getString(7));
	        	System.out.println(rs.getString(8));
	        	System.out.println(rs.getString(9));
	        	dc.setDoctorID(rs.getString(1));
		        dc.setDoctorName(rs.getString(2));
		        dc.setDoctorAge(rs.getString(4));
		        dc.setArea(rs.getString(3));
		        dc.setPosition(rs.getString(5));
		        dc.setOffice(rs.getString(6));
		        dc.setContact(rs.getString(7));
	        }
		}
		else
		{
			return "FAIL";
		}
	}catch(SQLException e)
	{
		System.out.println("Error:数据库连接错误!");
		return "FAIL";
	}catch(ClassNotFoundException e)
	{
		System.out.println("Error:数据库驱动加载错误!");
		return "FAIL";
	}
    return "SUCCESS";
}
}

	
		
	
