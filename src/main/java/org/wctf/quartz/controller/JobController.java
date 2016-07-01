package org.wctf.quartz.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.wctf.quartz.dao.ZkConfigDao;
import org.wctf.quartz.model.JobDefine;
import org.wctf.quartz.model.JobDefineSimple;
import org.wctf.quartz.model.JobSchedulingData;
import org.wctf.quartz.model.JobSchedulingData.Schedule.Job;
import org.wctf.quartz.model.JobSchedulingData.Schedule.JobDataMap;
import org.wctf.quartz.model.JobSchedulingData.Schedule.JobDataMap.Entry;
import org.wctf.quartz.utils.JaxbUtil;

@Controller
@RequestMapping("/job")
public class JobController {

	@Autowired
	ZkConfigDao zkConfigDao;

	@RequestMapping("/define/simple/list")
	public List<JobDefineSimple> getSimpleDefines() {
		return null;
	}

	@RequestMapping("/define/job/{jobName}")
	public JobDefine getJobDefine(@PathVariable String jobName) {
		return null;
	}

	@RequestMapping(value = "/define/create", method = RequestMethod.POST)
	@ResponseBody
	public String createNewJobDefine(@RequestBody JobDefine jobDefine) {
		System.out.println("create new job define.........");
		System.out.println("job define name ========" + jobDefine.getJobname());
		// JobDataMap jobDataMap =
		// jobSchedulingData.getSchedule().getJob().getJobDataMap();
		// if (jobDataMap != null) {
		// List<Entry> entry =
		// jobSchedulingData.getSchedule().getJob().getJobDataMap().getEntry();
		// if (CollectionUtils.isNotEmpty(entry))
		// FormatUtil.removeNull(entry);
		// }

		try {
//			if (zkConfigDao.isConfigExist(jobDefine.getJobname())) {
//				String content = zkConfigDao.getConfig(jobDefine.getJobname());
//				JobSchedulingData tempJSD = JaxbUtil.unmarshal(content, JobSchedulingData.class);
//				tempJSD.getSchedule().setJob(convertToJob(jobDefine));
//				zkConfigDao.modifyConfig(tempJSD.getSchedule().getJob().getName(), JaxbUtil.marshal(tempJSD, JobSchedulingData.class));
//			} else {
//				JobSchedulingData jobSchedulingData = new JobSchedulingData();
//				jobSchedulingData.getSchedule().setJob(convertToJob(jobDefine));
//				zkConfigDao.addNewConfig(jobDefine.getJobname(), JaxbUtil.marshal(jobSchedulingData, JobSchedulingData.class));
//			}
		} catch (Exception e) {
			e.printStackTrace();
			// log.error("error save job", e);
			// this.addFieldError("zookeeper error ", "error save job to
			// zookeeper,message is" + e.getMessage());
		}
		return "success";
	}

	@RequestMapping("/define/job/modify/{jobName}")
	public void editJobDefine(@PathVariable String jobName) {
		try {
			String configContent = zkConfigDao.getConfig(jobName);
			// if (StringUtils.isEmpty(configContent))
			// jobSchedulingData = JaxbUtil.unmarshal(configContent,
			// JobSchedulingData.class);

		} catch (Exception e) {
			// log.error("error edit job", e);
			// this.addFieldError("zookeeper error ", "error edit job to
			// zookeeper,message is" + e.getMessage());
		}
	}

	private Job convertToJob(JobDefine jobDefine) {
		Job job = new Job();
		job.setName(jobDefine.getJobname());
		job.setGroup(jobDefine.getJobname() + "_group");
		job.setJobClass(jobDefine.getJobclass());
		job.setDescription(jobDefine.getJobdesc());
		if (jobDefine.getJobkey() != null) {
			List<Entry> entries = new ArrayList<>();
			for (int i = 0; i < jobDefine.getJobkey().length; i++) {
				entries.add(new Entry(jobDefine.getJobkey()[i], jobDefine.getJobvalue()[i]));
			}
			job.setJobDataMap(new JobDataMap(entries));
		}
		return job;
	}
}
