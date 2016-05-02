package com.pzy.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pzy.entity.User;
import com.pzy.service.UserService;
/***
 * 后台首页，处理后台登录验证权限等操作
 * @author qq:263608237
 *
 */
@Controller
@RequestMapping("/admin")
public class IndexController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("center")
	public String center() {
		return "admin/center";
	}
	@RequestMapping("center/docenter")
	public String docenter(User user,Model model,HttpSession httpSession) {
		User newUser=userService.find(user.getId());
	
		newUser.setName(user.getName());
		userService.save(newUser);
		httpSession.setAttribute("adminuser", userService.find(user.getId()));
		model.addAttribute("tip","修改成功");
		return "admin/center/index";
	}
	
	
	@RequestMapping("center/docenterpassword")
	public String docenterpassword(String oldpassword,String newpassword,String newpasswordtwo,
			Model model,HttpSession httpSession) {
		User user=(User)httpSession.getAttribute("adminuser");
		if(!user.getPassword().equals(oldpassword)){
			model.addAttribute("tip","旧密码不正确");
			return "admin/center/index";
		}
		if(newpassword==null||newpasswordtwo==null){
			model.addAttribute("tip","新密码不能为空");
			return "admin/center/index";
		}
		if(!newpassword.equals(newpasswordtwo)){
			model.addAttribute("tip","两次输入密码不正确");
			return "admin/center/index";
		}
		user.setPassword(newpassword);
		userService.save(user);
		httpSession.setAttribute("adminuser", userService.find(user.getId()));
		model.addAttribute("tip","修改成功");
		return "admin/center/index";
	}
	
	
	@RequestMapping("chatroom")
	public String chatroom(Model model,HttpSession httpSession,Long fid) {
		User user=(User)httpSession.getAttribute("user");
		User friend=userService.find(fid);
		model.addAttribute("friend",friend);
		model.addAttribute("user",userService.find(user.getId()));
		return "admin/chatroom";
	}
	@RequestMapping("login")
	public String login(Model model) {
		model.addAttribute("tip", "注册成功，您的账号为,请登录!");
		return "admin/login";
	}
	@RequestMapping("index")
	public String index(Model model,HttpSession httpSession) {
		User user=(User)httpSession.getAttribute("user");
		model.addAttribute("user",userService.find(user.getId()));
		return "admin/index";
	}
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register() {
		return "admin/register";
	}
	
	@RequestMapping(value = "friend", method = RequestMethod.GET)
	public String friend() {
		return "admin/friend";
	}
	@RequestMapping(value = "friend", method = RequestMethod.POST)
	public String friend(Model model ,String key) {
		model.addAttribute("friends",userService.findAll(1, 100, key).getContent());
		return "admin/friend";
	}
	
	@RequestMapping(value = "addfriend")
	public String friend(Long id,Model model,HttpSession httpSession) {
		User friend=userService.find(id);
		
		User user=userService.find(((User)httpSession.getAttribute("user")).getId());
		
		user.getUsers().add(friend);
		model.addAttribute("tip","好友添加成功!");
		try {
			userService.save(user);
		} catch (Exception e) {
			model.addAttribute("tip","好友添加失败!");
			e.printStackTrace();
		}
		
		return "admin/friend";
	}
	
	
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(User user,Model model) {
		userService.save(user);
		model.addAttribute("tip", "注册成功，您的账号为"+user.getUsername()+",请登录!");
		return "admin/login";
	}
	@RequestMapping("loginout")
	public String loginout(HttpSession httpSession) {
		httpSession.setAttribute("user", null);
		return "admin/login";
	}
	@RequestMapping("gologin")
	public String gologin(HttpSession httpSession,String userName,String password,Model model)  {
		User user=userService.login(userName, password);
    	if(user!=null){
    		httpSession.setAttribute("user", user);
    		return "admin/index";
    	}
    	else{
    		httpSession.setAttribute("user", null);
    		model.addAttribute("tip","登陆失败 不存在此用户名或密码!");
    		return "admin/login";
    	}
    	
	}
}

