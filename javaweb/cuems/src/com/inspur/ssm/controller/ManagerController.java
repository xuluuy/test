package com.inspur.ssm.controller;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.inspur.ssm.pojo.Classinfo;
import com.inspur.ssm.pojo.Managerinfo;
import com.inspur.ssm.pojo.Studentinfo;
import com.inspur.ssm.service.ClassService;
import com.inspur.ssm.service.ManagerService;
import com.inspur.ssm.service.StudentService;
import com.inspur.ssm.service.TeacherService;

@Controller
@RequestMapping(value = "/man")
public class ManagerController {

	@Autowired
	private ManagerService managerService;
	@Autowired
	private ClassService classService;

	// 所有管理员信息查询
	@RequestMapping(value = "/findmaninfo")
	public String findManagerinfo(Map<String, Object> list, @RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		PageHelper.startPage(pn, 5);
		List<Managerinfo> allManagers;
		try {
			allManagers = managerService.getManagersList(list);
			//设置日期格式
			for (Managerinfo managerinfo : allManagers) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date date = managerinfo.getBirthday();
				managerinfo.setBirthdays(sdf.format(date));
			}
			//放到page里
			PageInfo<Managerinfo> page = new PageInfo<Managerinfo>(allManagers, allManagers.size());
			System.out.println(allManagers);
			model.addAttribute("num", "1");
			model.addAttribute("pageInfo", page);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "man/manList";
	}

	// 按条件查询管理员信息
	@RequestMapping(value = "/querymaninfo")
	public String queryMangerinfo(String managerid, String managername,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 5);
		Managerinfo man = new Managerinfo();
		man.setManagerid(managerid);
		man.setManagername(managername);
		List<Managerinfo> queryManagers;
		try {
			queryManagers = managerService.getqueryManagersList(man);
			for (Managerinfo managerinfo : queryManagers) {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				Date date = managerinfo.getBirthday();
				managerinfo.setBirthdays(sdf.format(date));
			}
			PageInfo<Managerinfo> page = new PageInfo<Managerinfo>(queryManagers, queryManagers.size());
			System.out.println(queryManagers);
			model.addAttribute("num", "2");
			model.addAttribute("id", managerid);
			model.addAttribute("name", managername);
			model.addAttribute("pageInfo", page);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "man/manList";
	}

	// 添加管理员信息
	@RequestMapping(value = "/addManager", method = RequestMethod.POST)
	public void addManager(HttpServletRequest req, HttpServletResponse resp, Model model, Managerinfo manager) {

		try {
			int count = managerService.insertManager(manager);
			if (count > 0) {
				req.setAttribute("insert", "信息添加成功！");
				req.getRequestDispatcher("/man/findmaninfo").forward(req, resp);
			} else {
				model.addAttribute("msg", "添加信息失败，请重新添加！");
				req.getRequestDispatcher("/jsp/man/manAdd.jsp").forward(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 删除管理员信息
	@RequestMapping(value = "/deletemanager")
	public void deletemanager(HttpServletRequest req, HttpServletResponse resp) {
		String manid = req.getParameter("managerid");

		try {
			int count;
			count = managerService.deleteManager(manid);
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

	// 获取所要编辑的信息
	@RequestMapping(value = "/getEditman")
	public String getEditman(String managerid, Model model) {

		Managerinfo man = null;
		try {
			man = managerService.queryManager(managerid);

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date date = man.getBirthday();
			man.setBirthdays(sdf.format(date));

			model.addAttribute("manager", man);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "man/manEdit";
	}

	// 编辑更新管理员信息
	@RequestMapping(value = "/updateManager", method = RequestMethod.POST)
	public void updateManager(HttpServletRequest req, HttpServletResponse resp, Model model, Managerinfo manager) {
		int count;
		try {
			count = managerService.updateManager(manager);
			if (count > 0) {
				req.setAttribute("insert", "信息更改成功！");
				req.getRequestDispatcher("/man/findmaninfo").forward(req, resp);
			} else {
				model.addAttribute("msg", "更改信息失败，请重新添加！");
				req.getRequestDispatcher("/jsp/man/manEdit.jsp").forward(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 查询课表信息
	@RequestMapping(value = "/classlist")
	public String classlist(Map<String, Object> list, @RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		PageHelper.startPage(pn, 3);
		List<Classinfo> allclasses;
		try {
			allclasses = classService.getClassList(list);
			PageInfo<Classinfo> page = new PageInfo<Classinfo>(allclasses, allclasses.size());
			System.out.println(allclasses);
			model.addAttribute("pageInfo", page);
			model.addAttribute("num", "1");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "man/classList";
	}

	// 根据条件模糊查询课表信息
	@RequestMapping(value = "/queryclass")
	public String queryclass(Classinfo classinfo, Model model,
			@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		String classid = classinfo.getClassid();
		String classname = classinfo.getClassname();
		PageHelper.startPage(pn, 3);
		List<Classinfo> allclasses;
		try {
			allclasses = classService.getClasses(classinfo);
			PageInfo<Classinfo> page = new PageInfo<Classinfo>(allclasses, allclasses.size());
			System.out.println(allclasses);
			model.addAttribute("pageInfo", page);
			model.addAttribute("num", "2");
			model.addAttribute("id", classid);
			model.addAttribute("name", classname);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "man/classList";
	}

	// 删除课表信息
	@RequestMapping(value = "/deleteclass")
	public void deleteclass(HttpServletRequest req, HttpServletResponse resp) {
		String cid = req.getParameter("classid");
		try {
			int count = classService.deleteClass(cid);
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

	// 获取待编辑课表信息
	@RequestMapping(value = "/geteditclass")
	public String geteditclass(String classid, Model model) {
		try {
			Classinfo cinfo = classService.geteditclass(classid);
			model.addAttribute("classinfo", cinfo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "man/classEdit";
	}

	// 更新课表信息
	@RequestMapping(value = "/updateclass", method = RequestMethod.POST)
	public void updateclass(HttpServletRequest req, HttpServletResponse resp, Classinfo classinfo) {
		try {
			int count = classService.updateClass(classinfo);
			if (count > 0) {
				req.setAttribute("success", "信息更改成功！");
				req.getRequestDispatcher("/man/classlist").forward(req, resp);
			} else {
				req.setAttribute("msg", "更改信息失败，请重新添加！");
				req.getRequestDispatcher("/jsp/man/classEdit.jsp").forward(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
