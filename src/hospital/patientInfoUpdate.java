package hospital;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class patientInfoUpdate {
	private String id;
	private int age;
	private String sex;
	private String contact;
	private String details;
	private String blood;
	public void setId(String id)
	{
		this.id = id;
	}
	public String getId()
	{
		return id;
	}
	public void setAge(int age)
	{
		this.age = age;
	}
	public int getAge()
	{
		return age;
	}
	public void setSex(String sex)
	{
		this.sex = sex;
	}
	public String getSex()
	{
		return sex;
	}
	
	public void setContact(String contact)
	{
		this.contact = contact;
	}
	public String getContact()
	{
		return contact;
	}
	
	public void setDetails(String details)
	{
		this.details = details;
	}
	public String getDetails()
	{
		return details;
	}
	
	public void setBlood(String blood)
	{
		this.blood = blood;
	}
	public String getBlood()
	{
		return blood;
	}
	
	public String execute()
	{
		try{
			Class.forName("com.mysql.jdbc.Driver");
		   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/selfillness","root","wan2013"); 
	        String sql = "update Patient set PatientAge="+age+",PatientSex=\""+sex+"\",PatientContact=\""+contact+"\",Detailillness=\""+details+"\",Bloodtype=\""+blood+"\" where PatientID=\""+id+"\"";
	        System.out.println(sql); 
	        System.out.println("fds");
	        Statement stmt = con.createStatement();
	        System.out.println("fd");
	        int result = stmt.executeUpdate(sql);
	        System.out.println("fd");
	        System.out.println(result);
	        stmt.close();
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
