package com.inspur.ssm.controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.inspur.ssm.pojo.Classinfo;
import com.inspur.ssm.pojo.CourseListinfo;
import com.inspur.ssm.pojo.SelectCrouseinfo;
import com.inspur.ssm.pojo.Studentinfo;
import com.inspur.ssm.service.ClassService;
import com.inspur.ssm.service.StudentService;
import com.inspur.ssm.service.TeacherService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * 学生控制器
 * 
 * @author Administrator
 *
 */
@Controller
@RequestMapping(value = "/stu")
public class StudentController {
	@Autowired
	private StudentService studentService;
	@Autowired
	private ClassService classService;
	@Autowired
	private TeacherService teacherService;

	// 学生信息查询
	@RequestMapping(value = "/findstuinfo")
	public String findStudentinfo(String stuid, Model model) {
		try {
			Studentinfo student = studentService.findStuinfo(stuid);
			model.addAttribute("student", student);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/stu/stuList";

	}

	// 获取所有学生信息
	@RequestMapping(value = "/findstudentinfo")
	public String findStudentinfo(Map<String, Object> list, @RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		PageHelper.startPage(pn, 5);
		List<Studentinfo> allStudents;
		try {
			allStudents = studentService.getStudentsList(list);
			for (Studentinfo stuinfo : allStudents) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date date = stuinfo.getBirthday();
				stuinfo.setBirthdays(sdf.format(date));
			}
			PageInfo<Studentinfo> page = new PageInfo<Studentinfo>(allStudents, allStudents.size());
			System.out.println(allStudents);
			model.addAttribute("num", "1");
			model.addAttribute("pageInfo", page);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "man/stuList";
	}

	// 按条件获取学生信息
	@RequestMapping(value = "/querystu")
	public String queryStudent(String stuid, String stuname, @RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		PageHelper.startPage(pn, 2);
		Studentinfo stu = new Studentinfo();
		stu.setStuid(stuid);
		stu.setStuname(stuname);
		List<Studentinfo> queryStudents;
		try {
			queryStudents = studentService.queryStudents(stu);
			for (Studentinfo studentinfo : queryStudents) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date date = studentinfo.getBirthday();
				studentinfo.setBirthdays(sdf.format(date));
			}
			PageInfo<Studentinfo> page = new PageInfo<Studentinfo>(queryStudents, queryStudents.size());
			System.out.println(queryStudents);
			model.addAttribute("num", "2");
			model.addAttribute("id", stuid);
			model.addAttribute("name", stuname);
			model.addAttribute("pageInfo", page);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "man/stuList";
	}

	// 添加学生信息
	@RequestMapping(value = "/addStudentinfo", method = RequestMethod.POST)
	public void addStudentinfo(Studentinfo student, HttpServletRequest req, HttpServletResponse resp) {
		int count;
		try {
			count = studentService.addStudent(student);
			if (count > 0) {
				req.setAttribute("success", "学生信息添加成功！");
				req.getRequestDispatcher("/stu/findstudentinfo").forward(req, resp);
			} else {
				req.setAttribute("msg", "添加信息失败，请重新添加！");
				req.getRequestDispatcher("/jsp/man/stuAdd.jsp").forward(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	// 删除学生信息
	@RequestMapping(value = "/deletestudent")
	public void deleteStudent(HttpServletRequest req, HttpServletResponse resp) {
		String stuid = req.getParameter("studentid");

		try {
			int count;
			count = studentService.deleteStudent(stuid);
			if (count > 0) {
				PrintWriter out = resp.getWriter();
				out.write(1);
				out.flush();
				out.close();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 获取所要编辑的学生信息
	@RequestMapping(value = "/getEditstu")
	public String getEditstu(String studentid, Model model) {
		Studentinfo stu = new Studentinfo();
		try {
			stu = studentService.findStuinfo(studentid);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = stu.getBirthday();
			stu.setBirthdays(sdf.format(date));

			model.addAttribute("student", stu);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "man/stuEdit";
	}

	// 更新学生信息
	@RequestMapping(value = "/updateStu")
	public void updateStu(HttpServletRequest req, HttpServletResponse resp, Studentinfo student) {
		student.getBirthdays();
		try {
			int count = studentService.updateStudent(student);
			if (count > 0) {
				req.setAttribute("success", "信息更改成功！");
				req.getRequestDispatcher("/stu/findstudentinfo").forward(req, resp);
			} else {
				req.setAttribute("msg", "更改信息失败，请重新添加！");
				req.getRequestDispatcher("/jsp/man/stuEdit.jsp").forward(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 查询学生课表信息
	@RequestMapping(value = "/getClass")
	public String getClass(String stuid, HttpSession session) throws Exception {

		List<Classinfo> list = classService.queryClassea(stuid);
		JSONArray result1JSON = JSONArray.fromObject(list);
		session.setAttribute("list", result1JSON);

		return "stu/classList";
	}

	// 查询学生选课信息
	@RequestMapping(value = "/selectClass")
	public String selectClasses(String stuid, Model model, @RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 5);
		try {
			List<SelectCrouseinfo> crouse = studentService.selectCourse(stuid);
			PageInfo<SelectCrouseinfo> page = new PageInfo<SelectCrouseinfo>(crouse, crouse.size());
			model.addAttribute("num", "1");
			model.addAttribute("pageInfo", page);
			model.addAttribute("stuid", stuid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "stu/selectClasses";
	}

	// 查询所有课程信息
	@RequestMapping(value = "/selectList")
	public String selectList(Model model, @RequestParam(value = "pn", defaultValue = "1") Integer pn, String stuid) {
		PageHelper.startPage(pn, 10);
		try {
			List<CourseListinfo> crouse = studentService.querycourse();

			PageInfo<CourseListinfo> page = new PageInfo<CourseListinfo>(crouse, crouse.size());
			model.addAttribute("stuid", stuid);
			model.addAttribute("pageInfo", page);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "stu/selectList";
	}

	// 添加学生选课
	@RequestMapping(value = "/addcourse")
	public void addCourse(String courseid, String stuid, Model model, HttpServletRequest req, HttpServletResponse resp)
			throws Exception {
		CourseListinfo course = studentService.selectCourseByCid(courseid);
		SelectCrouseinfo selectcourse = new SelectCrouseinfo();
		selectcourse.setCourname(course.getCoursename());
		selectcourse.setCourtype(course.getCoursetype());
		selectcourse.setTeacherid(course.getTeacherid());
		selectcourse.setStuid(stuid);
		int count = studentService.addCourse(selectcourse);
		if (count > 0) {
			req.setAttribute("stuid", stuid);
			req.getRequestDispatcher("/stu/selectClass").forward(req, resp);

		} else {
			model.addAttribute("msg", "选课失败，请重新选课！");
			req.getRequestDispatcher("/jsp/stu/selectClasses.jsp").forward(req, resp);

		}

	}
}
