package com.ly666.ahead.controller.student;import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;import com.ly666.ahead.entity.StudentInfo;import com.ly666.ahead.service.IStudentInfoService;import lombok.extern.slf4j.Slf4j;import org.springframework.stereotype.Controller;import org.springframework.ui.Model;import org.springframework.util.StringUtils;import org.springframework.web.bind.annotation.GetMapping;import org.springframework.web.bind.annotation.PathVariable;import org.springframework.web.bind.annotation.PostMapping;import javax.servlet.http.HttpSession;/** * @author ：luoyi * @date ：Created in 2019/6/2 15:16 * @desc : {} */@Slf4j@Controllerpublic class StudentController {	private IStudentInfoService studentInfoService;	public StudentController(final IStudentInfoService studentInfoService) {		this.studentInfoService = studentInfoService;	}	@PostMapping("/student/login")	public String studentLogin(String account, String password, HttpSession session) {		log.info(account + "===>尝试登入");		StudentInfo student = studentInfoService.getOne(new QueryWrapper<StudentInfo>().lambda()				.eq(StudentInfo::getStudentNumber, account)				.eq(StudentInfo::getStudentPassword, password));		if (StringUtils.isEmpty(student)) {			return "redirect:/";		}		session.setAttribute("student_info", student);		return "redirect:/student/index.html";	}	@GetMapping("/student/logout")	public String logout(HttpSession session) {		session.removeAttribute("student_info");		return "home";	}	@PostMapping("/student/updatePassword")	public String updatePassword(StudentInfo studentInfo, String now, Model model){		StudentInfo one = studentInfoService.getOne(new QueryWrapper<StudentInfo>().lambda()				.eq(StudentInfo::getStudentNumber, studentInfo.getStudentNumber())				.eq(StudentInfo::getStudentPassword, studentInfo.getStudentPassword()));		if (StringUtils.isEmpty(one)){			model.addAttribute("studentUpdatePasswordError","没有此学生信息");			return "home";		}		studentInfo.setStudentPassword(now);		studentInfoService.update();		model.addAttribute("studentUpdatePasswordSuccess","更新成功");		return "home";	}	@GetMapping("/student/getStudentInfo/{id}")	public String getStudentInfo(@PathVariable Integer id,Model model){		StudentInfo one = studentInfoService.getOne(new QueryWrapper<StudentInfo>().lambda()				.eq(StudentInfo::getStudentId, id));		model.addAttribute("studentInfo",one);		return "student/studentInfo";	}}