package org.wctf.quartz.model;

public class JobDefine {
	private String jobname;
	private String jobclass;
	private String jobdesc;
	private String[] jobkey;
	private String[] jobvalue;

	public String getJobname() {
		return jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
	}

	public String getJobclass() {
		return jobclass;
	}

	public void setJobclass(String jobclass) {
		this.jobclass = jobclass;
	}

	public String getJobdesc() {
		return jobdesc;
	}

	public void setJobdesc(String jobdesc) {
		this.jobdesc = jobdesc;
	}

	public String[] getJobkey() {
		return jobkey;
	}

	public void setJobkey(String[] jobkey) {
		this.jobkey = jobkey;
	}

	public String[] getJobvalue() {
		return jobvalue;
	}

	public void setJobvalue(String[] jobvalue) {
		this.jobvalue = jobvalue;
	}

}
