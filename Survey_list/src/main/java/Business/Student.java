package Business;

import java.io.Serializable;

public class Student implements Serializable {
    private String firstName;
	private String lastName;
	private String email;
    private String dob;
	private String heard;
	private String con;

	public Student() {
		firstName = "";
		lastName = "";
		email = "";
        dob = "";
		heard = "";
		con = "";
	}
	
	public Student(String firstName, String lastName, String email, String DOB, String heard, String contact) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
        this.dob = DOB;
		this.heard = heard;
		this.con = contact;
	}

	public String getHeard()
	{
		return this.heard;
	}

	public String getCon()
	{
		return this.con;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

    public String getEmail()
	{
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

    public String getDob()
    {
        return dob;
    }

    public void setDob(String dob)
    {
        this.dob = dob;
    }
}
