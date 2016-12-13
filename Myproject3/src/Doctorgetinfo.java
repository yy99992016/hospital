import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class Doctorgetinfo {
//	private HashMap<String,String> allDoctors = new HashMap<String,String>();
//	public HashMap<String,String> getAllDoctors()
//	{
//		return allDoctors;
//	}
	private Doctor dc = null;
	public Doctor getDc()
	{
		return dc;
	}
	private String doctorName;//?
	public void setDoctorName(String doctor)
	{
		this.doctorName = doctor;
	}
	public String getDoctorName()
	{
		return doctorName;
	}
	
	public String execute()
	{
	try{
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("成功连接到数据库！");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/selfillness","root","123456");
		System.out.println(doctorName);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from Doctor where DoctorName="+"\""+doctorName+"\"");
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
		        dc.setDoctorAge(rs.getInt(3));
		        dc.setDepartment(rs.getString(4));
		        dc.setArea(rs.getString(5));
		        dc.setPosition(rs.getString(6));
		        dc.setOffice(rs.getString(7));
		        dc.setContact(rs.getString(8));
		        dc.setDetailinfo(rs.getString(9));
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

	
		
	
