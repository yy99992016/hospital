
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import com.opensymphony.xwork2.ActionContext;

public class Doctorrecommend {
	private Doctor dc = null;
	public ArrayList<String> DoctorList = new ArrayList<String>();
	public Doctor getDc()
	{
		return dc;
	}
	public ArrayList<String> getDoctorList() {
		return DoctorList;
	}

	public void setDoctorList(ArrayList<String> doctorList) {
		DoctorList = doctorList;
	}
	private String Disease;

	public String getDisease() {
		return Disease;
	}

	public void setDisease(String disease) {
		Disease = disease;
	}

	public String execute()
	{
	try{
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("成功连接到数据库！");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/selfillness","root","123456");
		System.out.println(Disease);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from Doctor where Area ='"+Disease+"'");
		dc = new Doctor();
        if(rs.next())
		{
			System.out.println("找到该病情的医生");
			rs.previous();
			while(rs.next())
	        {
				DoctorList.add(rs.getString(2));
	        }
			ActionContext.getContext().put("li",DoctorList);
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

