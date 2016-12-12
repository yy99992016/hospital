package hospital;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.Action;

public class Canapp implements Action {
	Connection con=null;
	Statement stmt=null;
	ResultSet res=null;
	private String Date;
	private String Time;
	private String Time1;
	private String Department;
	private String DocName;
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getTime() {
		return Time;
	}
	public void setTime(String time) {
		Time = time;
	}
	public String getDepartment() {
		return Department;
	}
	public void setDepartment(String department) {
		Department = department;
	}
	public String getDocName() {
		return DocName;
	}
	public void setDocName(String docName) {
		DocName = docName;
	}
	@Override
	public String execute() throws Exception {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("成功连接到数据库！");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/selfillness?useUnicode=true&characterEncoding=utf-8&useSSL=false","root","wan2013");
			stmt = con.createStatement();	       
		}catch(SQLException e)
		{
			System.out.println("Error:数据库连接错误!");
			return "FAIL";
		}catch(ClassNotFoundException e)
		{
			System.out.println("Error:数据库驱动加载错误!");
			return "FAIL";
		}
		if(getTime().equals("8:00-9:00")){
			Time1 = "a";
		}
		else if(getTime().equals("9:00-10:00")){
			Time1 = "b";
		}
		else if(getTime().equals("10:00-11:00")){
			Time1 = "c";
		}
		else if(getTime().equals("13:30-14:30")){
			Time1 = "d";
		}
		else if(getTime().equals("14:30-15:30")){
			Time1 = "e";
		}
		else if(getTime().equals("15:30-16:30")){
			Time1 = "f";
		}
		String sql = "update DoctorList set "+Time1+"="+"0"+" where Date = '"+getDate()+"' and DoctorName = '"+DocName+"' and Department = '"+getDepartment()+"'";
		stmt.executeUpdate(sql);
		return "SUC";
	}

}
