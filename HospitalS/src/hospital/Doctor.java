package hospital;


public class Doctor {
	private String DoctorID;
	private String DoctorName;
	private String DoctorAge;
	private String Area;//主治科室（用于科室搜索与病情匹配）
	private String Position;
	private String Office;
	private String Contact;
	
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
	public void setDoctorAge(String DoctorAge)
	{
		this.DoctorAge = DoctorAge;
	}
	public String getDoctorAge()
	{
		return DoctorAge;
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
}

