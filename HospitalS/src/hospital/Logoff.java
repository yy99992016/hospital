package hospital;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

public class Logoff implements Action {

	@Override
	public String execute() throws Exception {
		ActionContext.getContext().getSession().remove("user");
		return "SUCCESS";
	}

}
