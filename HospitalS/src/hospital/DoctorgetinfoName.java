package hospital;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class DoctorgetinfoName {
	private HashMap<String,String> allDoctors = new HashMap<String,String>();
	public HashMap<String,String> getAllDoctors()
	{
		return allDoctors;
	}
	private String doctorName;

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String execute()
	{
	try{
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("成功连接到数据库！");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/selfillness?useUnicode=true&characterEncoding=utf-8&useSSL=false","root","123456");
		System.out.println(doctorName);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from DoctorList where DoctorName= '"+doctorName+"'");
		if(rs.next()){
			System.out.println("找到该医生");
			rs.previous();
		}
		else{
			return "FAIL";
		}
		while(rs.next())
        {
			allDoctors.put(rs.getString(1),rs.getString(2));
        	System.out.println(rs.getString(1));
        	System.out.println(rs.getString(2));
        	System.out.println(rs.getString(3));
        	System.out.println(rs.getString(4));
        	System.out.println(rs.getString(5));
        	System.out.println(rs.getString(6));
        	System.out.println(rs.getString(7));
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

	
		
	
