package com.entity;

import org.apache.ibatis.type.Alias;

/**
 * 员工类
 * @author xsp
 *
 */

@Alias("Employee_inf")
public class Employee_inf {
		public String id;
	 public int dept_id; //INT(11) NOT NULL,
	 public int job_id; //INT(11) NOT NULL,
	 public String name;// VARCHAR(20) NOT NULL,
	 public String crad_id; //VARCHAR(18) NOT NULL,
	 public String address ; //// NOT NULL,
	 public String post_code ; //// DEFAULT NULL,
	 public String tel; // //DEFAULT NULL,
	 public String phone ; ////NOT NULL,
	 public String qq_num ; //// DEFAULT NULL,
	 public String email; //// NOT NULL,
	 public String sex ; ////NOT NULL DEFAULT '1',
	 public String party ; //// DEFAULT NULL,
	 public String birthday ; // DEFAULT NULL,
	 public String race; // DEFAULT NULL,
	 public String education ; // DEFAULT NULL,
	 public String speciality ; // DEFAULT NULL,
	 public String hobby ; // DEFAULT NULL,
	 public String remark  ; //DEFAULT NULL,
	 public String create_date ; // NOT NULL DEFAULT CURRENT_TIMESTAMP,
	public Employee_inf() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee_inf(String id, int dept_id, int job_id, String name, String crad_id, String address,
			String post_code, String tel, String phone, String qq_num, String email, String sex, String party,
			String birthday, String race, String education, String speciality, String hobby, String remark,
			String create_date) {
		super();
		this.id = id;
		this.dept_id = dept_id;
		this.job_id = job_id;
		this.name = name;
		this.crad_id = crad_id;
		this.address = address;
		this.post_code = post_code;
		this.tel = tel;
		this.phone = phone;
		this.qq_num = qq_num;
		this.email = email;
		this.sex = sex;
		this.party = party;
		this.birthday = birthday;
		this.race = race;
		this.education = education;
		this.speciality = speciality;
		this.hobby = hobby;
		this.remark = remark;
		this.create_date = create_date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCrad_id() {
		return crad_id;
	}
	public void setCrad_id(String crad_id) {
		this.crad_id = crad_id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPost_code() {
		return post_code;
	}
	public void setPost_code(String post_code) {
		this.post_code = post_code;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQq_num() {
		return qq_num;
	}
	public void setQq_num(String qq_num) {
		this.qq_num = qq_num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getParty() {
		return party;
	}
	public void setParty(String party) {
		this.party = party;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getRace() {
		return race;
	}
	public void setRace(String race) {
		this.race = race;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	@Override
	public String toString() {
		return "Employee_inf [id=" + id + ", dept_id=" + dept_id + ", job_id=" + job_id + ", name=" + name
				+ ", crad_id=" + crad_id + ", address=" + address + ", post_code=" + post_code + ", tel=" + tel
				+ ", phone=" + phone + ", qq_num=" + qq_num + ", email=" + email + ", sex=" + sex + ", party=" + party
				+ ", birthday=" + birthday + ", race=" + race + ", education=" + education + ", speciality="
				+ speciality + ", hobby=" + hobby + ", remark=" + remark + ", create_date=" + create_date + "]";
	}
	
}
