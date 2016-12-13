
public class Doctor {
	private String DoctorID;//主键自动增加(不可重复)身份证啥的最好
	private String DoctorName;//医生姓名（用于搜索）
	private int DoctorAge;//年龄
	private String Department;//科室，暂时没有什么用（优化）
	private String Area;//主治病情（用于病情搜索与病情匹配）
	private String Position;//职位
	private String Office;//办公室地点
	private String Contact;//联系方式
	private String Detailinfo;//用于医生的详细介绍
	private String Dkey;
	private String Dkey1;
	
	public void setDoctorID(String DoctorID)
	{
		this.DoctorID = DoctorID;
	}
	public String getDoctorID()
	{
		return DoctorID;
	}
	public void setDoctorName(String DoctorName)
	{
		this.DoctorName = DoctorName;
	}
	public String getDoctorName()
	{
		return DoctorName;
	}
	public void setDoctorAge(int DoctorAge)
	{
		this.DoctorAge = DoctorAge;
	}
	public int getDoctorAge()
	{
		return DoctorAge;
	}
	public void setDepartment(String Department)
	{
		this.Department = Department;
	}
	public String getDepartment()
	{
		return Department;
	}
	public void setArea(String Area)
	{
		this.Area = Area;
	}
	public String getArea()
	{
		return Area;
	}
	public void setOffice(String Office)
	{
		this.Office = Office;
	}
	public String getOffice()
	{
		return Office;
	}
	public void setPosition(String Position)
	{
		this.Position = Position;
	}
	public String getPosition()
	{
		return Position;
	}
	public void setContact(String Contact)
	{
		this.Contact = Contact;
	}
	public String getContact()
	{
		return Contact;
	}
	public void setDetailinfo(String Detailinfo)
	{
		this.Detailinfo = Detailinfo;
	}
	public String getDetailinfo()
	{
		return Detailinfo;
	}
	public void setDkey(String Dkey)
	{
		this.Dkey = Dkey;
	}
	public String getDkey()
	{
		return Dkey;
	}
	public void setDkey1(String Dkey1)
	{
		this.Dkey1 = Dkey1;
	}
	public String getDkey1()
	{
		return Dkey1;
	}
}

