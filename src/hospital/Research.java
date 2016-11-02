package hospital;

import java.sql.ResultSet;
import java.util.ArrayList;

import link.Link;

import com.opensymphony.xwork2.Action;

public class Research implements Action {
	private String Research;
	private Link link = new Link();
	private ArrayList<String> doctor = new ArrayList<String>(); 
	public String getResearch() {
		return Research;
	}
	public void setResearch(String research) {
		Research = research;
	}
	public String Research() throws Exception {
		String sql = "select * from Doctor where department = '"+Research+"'";
		ResultSet res = link.executeQuery(sql);
		String sql1 = "select * from Doctor where disease = '"+Research+"'";
		ResultSet res1 = link.executeQuery(sql1);		
		if(res.next()){
			while(res.next()){
				doctor.add(res.getString(1));
			}
			return SUCCESS;
		}
		else if(res1.next()){
			while(res1.next()){
				doctor.add(res1.getString(1));
			}
			return SUCCESS;
		}
		else{
			return "Error";
		}
	}
	@Override
	public String execute() throws Exception {
		// TODO 自动生成的方法存根
		return null;
	}

}
