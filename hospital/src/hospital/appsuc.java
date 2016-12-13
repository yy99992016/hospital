package hospital;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class appsuc implements Action {
	Connection con=null;
	Statement stmt=null;
	ResultSet res=null;
	private String Date;
	private String Time;
	private String Department;
	private String DocName;
	private String Name;
	private String Time1;
	private String jus;
	
	public String getJus() {
		return jus;
	}

	public void setJus(String jus) {
		this.jus = jus;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

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
		if(getTime().equals("1")){
			Time1 = "a";
		}
		if(getTime().equals("2")){
			Time1 = "b";
		}
		if(getTime().equals("3")){
			Time1 = "c";
		}
		if(getTime().equals("4")){
			Time1 = "d";
		}
		if(getTime().equals("5")){
			Time1 = "e";
		}
		if(getTime().equals("6")){
			Time1 = "f";
		}
		System.out.println(jus);
		if(getJus().equals("0")){
			String sql = "update DoctorList set "+Time1+" ='"+ActionContext.getContext().getSession().get("user")+"' where Date = '"+getDate()+"' and DoctorName = '"+getDocName()+"' and Department ='"+getDepartment()+"'";
			stmt.executeUpdate(sql);
			return "AppSuc";
		}
		else{
			return "Appf";
		}
	}

}
