package com.inspur.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inspur.ssm.pojo.Managerinfo;
import com.inspur.ssm.pojo.Studentinfo;
import com.inspur.ssm.pojo.Teacherinfo;
import com.inspur.ssm.service.LoginService;
import com.inspur.ssm.service.StudentService;

/**
 * 登录控制器
 * 
 * @author administrator
 *
 */
@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;

	// 学生登录
	@RequestMapping("/stulogin")
	public String stulogin(HttpServletRequest request, Studentinfo studentinfo) throws Exception {

		Studentinfo student = null;
		try {

			// 调用service进行用户身份验证
			student = loginService.findUser(studentinfo);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", e.getMessage());
		}
		if (student != null) {
			HttpSession session = request.getSession();
			// 在session中保存用户身份信息
			session.setAttribute("student", student);
			session.setAttribute("usertype", student.getUsertype());
			session.setAttribute("userid", student.getStuid());

			// 重定向到商品列表中
			return "stuindex";
		} else {
			request.setAttribute("message", "用户名或密码错误！");
		}

		return "login";
	}

	// 教师登录
	@RequestMapping("/tealogin")
	public String tealogin(HttpServletRequest request, Teacherinfo teacherinfo) throws Exception {
		Teacherinfo teacher = null;
		try {
			// 调用service进行用户身份验证
			teacher = loginService.findTeacher(teacherinfo);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", e.getMessage());
		}
		if (teacher != null) {
			HttpSession session = request.getSession();
			// 在session中保存用户身份信息
			session.setAttribute("teacher", teacher);
			session.setAttribute("usertype", teacher.getUsertype());
			session.setAttribute("userid", teacher.getTeacherid());

			// 重定向到商品列表中
			return "teaindex";
		} else {
			request.setAttribute("message", "用户名或密码错误！");
		}

		return "login";
	}

	// 管理员登录
	@RequestMapping("/manlogin")
	public String manlogin(HttpServletRequest request, Managerinfo managerinfo) throws Exception {
		Managerinfo manager = null;
		try {
			// 调用service进行用户身份验证
			manager = loginService.findManager(managerinfo);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", e.getMessage());
		}
		if (manager != null) {
			HttpSession session = request.getSession();
			// 在session中保存用户身份信息
			session.setAttribute("manager", manager);
			session.setAttribute("usertype", manager.getUsertype());
			session.setAttribute("userid", manager.getManagerid());

			// 重定向到商品列表中
			return "index";
		} else {
			request.setAttribute("message", "用户名或密码错误！");
		}

		return "login";
	}

	// 退出
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {
		// 清除session,直接session过期
		session.invalidate();
		return "login";
	}

	@RequestMapping("/find")
	public String find(HttpSession session) throws Exception {
		// 清除session,直接session过期
		session.invalidate();
		return "login";
	}

}
