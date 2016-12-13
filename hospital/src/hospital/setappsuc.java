package hospital;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class setappsuc implements Action {
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

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getJus() {
		return jus;
	}

	public void setJus(String jus) {
		this.jus = jus;
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
			String sql = "update DoctorList set "+Time1+" ='"+1+"' where Date = '"+getDate()+"' and DoctorName = '"+getDocName()+"' and Department ='"+getDepartment()+"'";
			stmt.executeUpdate(sql);
			return "SetAppSuc";
		}
		else if(getJus().equals("1")){
			String sql = "update DoctorList set "+Time1+" ='"+0+"' where Date = '"+getDate()+"' and DoctorName = '"+getDocName()+"' and Department ='"+getDepartment()+"'";
			stmt.executeUpdate(sql);
			return "SetAppSuc";
		}
		else if(getJus().equals("2")){
			return "SetAppSuc1";
		}
		else if(getJus().equals("3")){
			System.out.println(ActionContext.getContext().getSession().get("user"));
			System.out.println(getDepartment());
			res = stmt.executeQuery("select * from patient where PatientName = '"+ActionContext.getContext().getSession().get("user")+"' and Department ='"+getDepartment()+"'");
			if(!res.next()){
				System.out.println(6);
			}
			if(Time1.equals("a")){
				System.out.println(getDate());
				System.out.println(res.getString(1));
				System.out.println(res.getString(2));
				System.out.println(res.getString(11));
				System.out.println(res.getString(3));
				System.out.println(res.getString(12));
				System.out.println(res.getString(13));
				System.out.println(res.getString(5));
				String sql1 = "insert into DoctorList (DoctorName,Department,Age,Position,Office,Contact,Date,a,b,c,d,e,f) values('"+res.getString(2)+"','"+res.getString(11)+"','"+res.getString(3)+"','"+res.getString(12)+"','"+res.getString(13)+"','"+res.getString(5)+"','"+getDate()+"','"+1+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"')";	
				stmt.executeUpdate(sql1);
			}
			else if(Time1.equals("b")){
				String sql1 = "insert into DoctorList (DoctorName,Department,Age,Position,Office,Contact,Date,a,b,c,d,e,f) values('"+res.getString(2)+"','"+res.getString(11)+"','"+res.getString(3)+"','"+res.getString(12)+"','"+res.getString(13)+"','"+res.getString(5)+"','"+getDate()+"','"+0+"','"+1+"','"+0+"','"+0+"','"+0+"','"+0+"')";	
				stmt.executeUpdate(sql1);
			}
			else if(Time1.equals("c")){
				String sql1 = "insert into DoctorList (DoctorName,Department,Age,Position,Office,Contact,Date,a,b,c,d,e,f) values('"+res.getString(2)+"','"+res.getString(11)+"','"+res.getString(3)+"','"+res.getString(12)+"','"+res.getString(13)+"','"+res.getString(5)+"','"+getDate()+"','"+0+"','"+0+"','"+1+"','"+0+"','"+0+"','"+0+"')";	
				stmt.executeUpdate(sql1);
			}
			else if(Time1.equals("d")){
				String sql1 = "insert into DoctorList (DoctorName,Department,Age,Position,Office,Contact,Date,a,b,c,d,e,f) values('"+res.getString(2)+"','"+res.getString(11)+"','"+res.getString(3)+"','"+res.getString(12)+"','"+res.getString(13)+"','"+res.getString(5)+"','"+getDate()+"','"+0+"','"+0+"','"+0+"','"+1+"','"+0+"','"+0+"')";	
				stmt.executeUpdate(sql1);
			}
			else if(Time1.equals("e")){
				String sql1 = "insert into DoctorList (DoctorName,Department,Age,Position,Office,Contact,Date,a,b,c,d,e,f) values('"+res.getString(2)+"','"+res.getString(11)+"','"+res.getString(3)+"','"+res.getString(12)+"','"+res.getString(13)+"','"+res.getString(5)+"','"+getDate()+"','"+0+"','"+0+"','"+0+"','"+0+"','"+1+"','"+0+"')";	
				stmt.executeUpdate(sql1);
			}
			else if(Time1.equals("f")){
				String sql1 = "insert into DoctorList (DoctorName,Department,Age,Position,Office,Contact,Date,a,b,c,d,e,f) values('"+res.getString(2)+"','"+res.getString(11)+"','"+res.getString(3)+"','"+res.getString(12)+"','"+res.getString(13)+"','"+res.getString(5)+"','"+getDate()+"','"+0+"','"+0+"','"+0+"','"+0+"','"+0+"','"+1+"')";	
				stmt.executeUpdate(sql1);
			}
			return "SetAppSuc";
		}
		else{
			return "SetAppSuc1";
		}
	}

}
