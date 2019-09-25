package com.inspur.ssm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inspur.ssm.pojo.Managerinfo;
import com.inspur.ssm.pojo.Studentinfo;
import com.inspur.ssm.pojo.Teacherinfo;
import com.inspur.ssm.service.ManagerService;
import com.inspur.ssm.service.StudentService;
import com.inspur.ssm.service.TeacherService;

@Controller
@RequestMapping(value = "/password")
public class PasswordController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private ManagerService managerService;

	// 修改密码
	@RequestMapping(value = "/change", method = RequestMethod.POST)
	public void changePassword(HttpServletRequest req, HttpServletResponse resp,Model model) throws Exception {
		String userid = req.getParameter("userid");
		String usertype = req.getParameter("usertype");
		String userpas = req.getParameter("password_old");
		String userpass = req.getParameter("password_1");

		if ("S".equals(usertype)) {
			Studentinfo student = new Studentinfo();
			student.setStuid(userid);
			student.setStupassword(userpas);
			student.setResetpassword(userpass);
			Studentinfo stu = studentService.changePassword(student);
			if (stu == null) {
				req.setAttribute("messages", "密码修改失败，请重新修改！");
				req.getRequestDispatcher("/jsp/changepassword.jsp").forward(req, resp);
			} else {
				req.setAttribute("success", "密码修改成功，请重新登录！");
				req.getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
			}

		} else if ("T".equals(usertype)) {
			Teacherinfo teacher = new Teacherinfo();
			teacher.setTeacherid(userid);
			teacher.setTeapassword(userpas);
			teacher.setResetpassword(userpass);
			Teacherinfo tea = teacherService.changePassword(teacher);
			if (tea == null) {
				req.setAttribute("messages", "用户名或密码错误，请重新输入！");
				req.getRequestDispatcher("/jsp/changepassword.jsp").forward(req, resp);
			} else {
				req.setAttribute("success", "密码修改成功，请重新登录！");
				req.getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
			}
		} else if ("M".equals(usertype)) {
			Managerinfo manager = new Managerinfo();
			manager.setManagerid(userid);
			manager.setManpassword(userpas);
			manager.setResetpassword(userpass);
			Managerinfo man = managerService.changePassword(manager);
			if (man == null) {
				req.setAttribute("messages", "用户名或密码错误，请重新输入！");
				req.getRequestDispatcher("/jsp/changepassword.jsp").forward(req, resp);
			} else {
				req.setAttribute("success", "密码修改成功，请重新登录！");
				req.getRequestDispatcher("/jsp/login.jsp").forward(req, resp);
			}
		}

	}
}
