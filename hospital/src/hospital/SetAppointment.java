package hospital;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class SetAppointment implements Action {
	Connection con=null;
	Statement stmt=null;
	ResultSet res=null;
	private String Month;
	private String Date;
	private Doctor1 D = new Doctor1();
	public Doctor1 getD() {
		return D;
	}

	public void setD(Doctor1 d) {
		D = d;
	}

	public String getMonth() {
		return Month;
	}

	public void setMonth(String month) {
		Month = month;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
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
		String sql = "select * from doctorlist where Date = '"+getMonth()+getDate()+"' and DoctorName = '"+ActionContext.getContext().getSession().get("user")+"'";
		System.out.println(sql);
		res = stmt.executeQuery(sql);
		if(res.next()){
			//res = stmt.executeQuery(sql);
			D.name = res.getString(2);
			System.out.println(666);
			if(((String)res.getString(9)).equals("0")){
				D.a = "禁止预约";
				D.jus="0";
			}
			else if(((String)res.getString(9)).equals("1")){
				D.a ="取消禁止";
				D.jus="1";
				System.out.println(D.jus);
			}
			else{
				D.a="已被预约";
				D.jus="2";
			}
			if(((String)res.getString(10)).equals("0")){
				D.b = "禁止预约";
				D.jus1="0";
			}
			else if(((String)res.getString(10)).equals("1")){
				D.b ="取消禁止";
				D.jus1="1";
				System.out.println(D.jus);
			}
			else{
				D.b="已被预约";
				D.jus1="2";
			}
			if(((String)res.getString(11)).equals("0")){
				D.c = "禁止预约";
				D.jus2="0";
			}
			else if(((String)res.getString(11)).equals("1")){
				D.c ="取消禁止";
				D.jus2="1";
				System.out.println(D.jus);
			}
			else{
				D.c="已被预约";
				D.jus2="2";
			}
			if(((String)res.getString(12)).equals("0")){
				D.d = "禁止预约";
				D.jus3="0";
			}
			else if(((String)res.getString(12)).equals("1")){
				D.d ="取消禁止";
				D.jus3="1";
				System.out.println(D.jus);
			}
			else{
				D.d="已被预约";
				D.jus3="2";
			}
			if(((String)res.getString(13)).equals("0")){
				D.e = "禁止预约";
				D.jus4="0";
			}
			else if(((String)res.getString(13)).equals("1")){
				D.e ="取消禁止";
				D.jus4="1";
				System.out.println(D.jus);
			}
			else{
				D.e="已被预约";
				D.jus4="2";
			}
			if(((String)res.getString(14)).equals("0")){
				D.f = "禁止预约";
				D.jus5="0";
			}
			else if(((String)res.getString(14)).equals("1")){
				D.f ="取消禁止";
				D.jus5="1";
				System.out.println(D.jus);
			}
			else{
				D.f="已被预约";
				D.jus5="2";
			}
			D.Date=getMonth()+getDate();
			D.Department=(String) ActionContext.getContext().getSession().get("Department");
			return "SUCCESS";
		}
		else{
			D.name = (String) ActionContext.getContext().getSession().get("user");
			D.a = "禁止预约";
			D.jus="3";
			D.jus1="3";
			D.jus2="3";
			D.jus3="3";
			D.jus4="3";
			D.jus5="3";
			D.b = "禁止预约";
			D.c = "禁止预约";
			D.d = "禁止预约";
			D.e = "禁止预约";
			D.f = "禁止预约";
			D.Date=getMonth()+getDate();
			D.Department=(String) ActionContext.getContext().getSession().get("Department");
			return "SUCCESS";
		}
	}

}
