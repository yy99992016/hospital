package hospital;

import java.sql.ResultSet;
import java.sql.SQLException;

import link.Link;
public class Login{
	private String Username;
	private String Password;
	private Link link = new Link();
	public String Log_in() throws Exception{
		String sql = "select * from User where Username = '"+Username+"'";
		ResultSet res = link.executeQuery(sql);
		if(!res.next()){
			return "NoUser";
		}
		else{
			if(res.getString(2).equals(Password)){
				return "Success";
			}
			else{
				return "PsError";
			}
		}
	}
}
