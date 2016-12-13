package hospital;

//import hospital.Appointment.Doc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class DocQuery implements Action {
	Connection con=null;
	Statement stmt=null;
	public ArrayList<App> getPatList() {
		return PatList;
	}
	public void setPatList(ArrayList<App> patList) {
		PatList = patList;
	}
	ResultSet res=null;
	ArrayList<App> PatList = new ArrayList<App>();
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
		res = stmt.executeQuery("select * from DoctorList where DoctorName = '"+ActionContext.getContext().getSession().get("user")+"'");
		if(res.next()){
			res = stmt.executeQuery("select * from DoctorList where DoctorName = '"+ActionContext.getContext().getSession().get("user")+"'");
			while(res.next()){
				if(!(res.getString(9).equals("0")||res.getString(9).equals("1"))){
					App u = new App();
					u.Department = res.getString(3);
					u.Date = res.getString(8);
					u.Doctor = res.getString(9);
					u.Time = "8:00-9:00";
					PatList.add(u);
				}
				if(!(res.getString(10).equals("0")||res.getString(10).equals("1"))){
					App u = new App();
					u.Department = res.getString(3);
					u.Date = res.getString(8);
					u.Doctor = res.getString(10);
					u.Time = "9:00-10:00";
					PatList.add(u);
				}
				if(!(res.getString(11).equals("0")||res.getString(11).equals("1"))){
					App u = new App();
					u.Department = res.getString(3);
					u.Date = res.getString(8);
					u.Doctor = res.getString(11);
					u.Time = "10:00-11:00";
					System.out.println(666);
					PatList.add(u);
				}
				if(!(res.getString(12).equals("0")||res.getString(12).equals("1"))){
					App u = new App();
					u.Department = res.getString(3);
					u.Date = res.getString(8);
					u.Doctor = res.getString(12);
					u.Time = "13:30-14:30";
					PatList.add(u);
				}
				if(!(res.getString(13).equals("0")||res.getString(13).equals("1"))){
					App u = new App();
					u.Department = res.getString(3);
					u.Date = res.getString(8);
					u.Doctor = res.getString(13);
					u.Time = "14:30-15:30";
					PatList.add(u);
				}
				if(!(res.getString(14).equals("0")||res.getString(14).equals("1"))){
					App u = new App();
					u.Department = res.getString(3);
					u.Date = res.getString(8);
					u.Doctor = res.getString(14);
					u.Time = "14:30-15:30";
					PatList.add(u);
				}
			}
			setPatList(PatList);
			return "SUC";
		}
		else{
			return "NoApp";
		}
	}

}
