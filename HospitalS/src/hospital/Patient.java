package hospital;

public class Patient {

	private String PatientID;//主键自动增加(不可重复)身份啥的最好
	private String PatientName;//姓名
	private int PatientAge;//年龄
	private String PatientSex;//性别
	private String PatientContact;//联系方式(手机或邮箱)
	private String Detailillness;//详细病情
	private String Bloodtype;//血型
	private String Pkey;
	private String Pkey1;
	
	public void setPatientID(String PatientID)
	{
		this.PatientID = PatientID;
	}
	public String getPatientID()
	{
		return PatientID;
	}
	public void setPatientName(String PatientName)
	{
		this.PatientName = PatientName;
	}
	public String getPatientName()
	{
		return PatientName;
	}
	public void setPatientAge(int PatientAge)
	{
		this.PatientAge = PatientAge;
	}
	public int getPatientAge()
	{
		return PatientAge;
	}
	public void setPatientSex(String PatientSex)
	{
		this.PatientSex = PatientSex;
	}
	public String getPatientSex()
	{
		return PatientSex;
	}
	public void setPatientContact(String PatientContact)
	{
		this.PatientContact = PatientContact;
	}
	public String getPatientContact()
	{
		return PatientContact;
	}
	public void setDetailillness(String Detailillness)
	{
		this.Detailillness = Detailillness;
	}
	public String getDetailillness()
	{
		return Detailillness;
	}
	public void setBloodtype(String Bloodtype)
	{
		this.Bloodtype = Bloodtype;
	}
	public String getBloodtype()
	{
		return Bloodtype;
	}
	public void setPkey(String Pkey)
	{
		this.Pkey = Pkey;
	}
	public String getPkey()
	{
		return Pkey;
	}
	public void setPkey1(String Pkey1)
	{
		this.Pkey1 = Pkey1;
	}
	public String getPkey1()
	{
		return Pkey1;
	}
}


