package com.yc.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.yc.bean.HumanFile;
import com.yc.biz.HumanFileBiz;

@Controller
public class HumanFileController {
	private HumanFileBiz humanFileBiz;
	@Resource(name="humanFileBizImpl")
	public void setHumanFileBiz(HumanFileBiz humanFileBiz) {
		this.humanFileBiz = humanFileBiz;
	}
	@RequestMapping(value="/show_register.action")
	public String show(){
		return "filecheck";
	}
	@RequestMapping(value="/register.action")
	public String humanFileRegister(HumanFile humanFile){
		humanFile.setCheckStatus((short) 0);
		this.humanFileBiz.humanFileRegister(humanFile);
		return "main";
	}
	@RequestMapping(value="/show_file.action")
	public String showFile(){
		return "file";
	}
	@RequestMapping(value="/file.action")
	public String humanFileCheck(){
		this.humanFileBiz.humanFileList(new HumanFile());
		return "file";
	}
}
