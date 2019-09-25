package com.inspur.ssm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.inspur.ssm.pojo.Teacherinfo;
import com.inspur.ssm.service.TeacherService;

@Controller
@RequestMapping(value = "/tea")
public class TeacherController {
	@Autowired
	private TeacherService teacherService;

	@RequestMapping(value = "/findTeaInfo")
	public String findTeaInfo(String teaid, Model model) {
		try {
			Teacherinfo teacher = teacherService.findTeainfo(teaid);
			model.addAttribute("teacher", teacher);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "/tea/teaList";
	}
}
