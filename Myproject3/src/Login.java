 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Login{
	private Patient pt =null;
	public Patient getPt()
	{
		return pt;
	}
	private String patientID;
	private String pkey;
	public void setPatientID(String p_id)
	{
		this.patientID = p_id;
	}
	public String getPatientID()
	{
		return patientID;
	}
	public void setPkey(String p_key)
	{
		this.pkey = p_key;
	}
	public String getPkey()
	{
		return pkey;
	}
	public String execute(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/selfillness","root","123456");
	        Statement stmt = con.createStatement();
	        ResultSet rs = stmt.executeQuery("select * from Patient where PatientID=\""+patientID+"\"");
	        pt = new Patient();
			if(rs.next()){

				System.out.println(rs.getString(1));
	        	System.out.println(rs.getString(2));
	        	System.out.println(rs.getInt(3));
	        	System.out.println(rs.getString(4));
	        	System.out.println(rs.getString(5));
	        	System.out.println(rs.getString(6));
	        	System.out.println(rs.getString(7));
	        	System.out.println(rs.getString(8));
	        	System.out.println(rs.getString(9));
	        	pt.setPatientID(rs.getString(1));
		        pt.setPatientName(rs.getString(2));
		        pt.setPatientAge(rs.getInt(3));
		        pt.setPatientSex(rs.getString(4));
		        pt.setPatientContact(rs.getString(5));
		        pt.setDetailillness(rs.getString(6));
		        pt.setBloodtype(rs.getString(7));
		        pt.setPkey(rs.getString(8));
		        pt.setPkey1(rs.getString(9));
				if(rs.getString(8).equals(pkey)){
					return "SUCCESS";
				}
				else{
					return "PsError";
				}
				
			}
			else{
				return "NoUser";
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
	}
}
