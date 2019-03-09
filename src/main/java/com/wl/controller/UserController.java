package com.wl.controller;

import java.util.List;

import javax.annotation.Generated;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.wl.model.User;
import com.wl.service.BaseService;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@Controller
public class UserController {
	@Autowired
	private BaseService baseService;

	
	@RequestMapping(value="/admin/addUser.html",method={RequestMethod.POST})
	public String addUser(User user,Integer roleId){
		baseService.addUserAndRoleId(user,roleId);
		System.out.println("add成功");
		return "redirect:admin/user";

	}

	//查询所有数据
	@GetMapping("/admin/userManager.html")
	public String user(Model model,Integer pageNum,Integer pageSize){
	List<User> users=baseService.selectRelUsers();
		System.out.println("pagenum:"+pageNum+"pagesize:"+pageSize);
		PageInfo<User> userlist=baseService.selectUsersByPager(pageNum, pageSize);
		model.addAttribute("userDataByPage", userlist);
		if(pageNum==null || pageNum==0){
			pageNum=1;
			
		}
		if(pageSize==null || pageSize==0){
			pageSize=10;
		}
		return "admin/user";
		
		
	}

	@ResponseBody
	@RequestMapping(value="/admin/updataUser.html",method=RequestMethod.GET,produces="text/plain;charset=UTF-8")
	public String updataUser(Model model,Integer id,HttpServletRequest request){
		User user=baseService.selectRelUserByUid(id);
		String path=request.getContextPath();
		
		return "<div class=\"modal-header\">\r\n"+
        "		<button type=\"button\" class=\"close\" data-dismiss=\"modal\">\r\n"+
		" 		<span>&times;</span>\r\n"+
        "		</button>\r\n"+
        "		<h4 class=\"modal-title\" id=\"myModalLabel\">编辑用户</h4>\r\n"+
        "			</div>\r\n"+
        "		<div class=\"modal-body\">\r\n"+
        "		<form id=\"UpdateUserFrom\" action=\""+path+"/admin/UpadteUser.html\" method=\"post\">\r\n"+
        "         <input type='hidde' name='id' value='"+user.getId()+"'/>"+
        " 		<div class=\"form-group\">\r\n"+
        "		<label>用户名：</label><input type=\"text\" name=\"username\" class=\"form-control\" value=\""+user.getUsername()+"\"/>\r\n"+
        "		</div>\r\n"+
        "		<div class=\"form-group\">\r\n"+
        "		<label>密码：(密码留空表示不修改)</label><input type=\"password\" name=\"password\" class=\"form-control\" value=\"\"/>\r\n"+
        "		</div>\r\n"+
        "		<div class=\"form-group\">\r\n"+
        		"<label>手机号：</label><input type=\"text\" name=\"phone\" class=\"form-control\" value=\""+user.getPhone()+"\"/>\r\n"+
        "		</div>\r\n"+
        	
        "		<div class=\"form-group\">\r\n"+
        "		<label>邮箱：</label><input type=\"text\" name=\"email\" class=\"form-control\" value=\""+user.getEmail()+"\"/>\r\n"+
        "		</div>\r\n"+
        "		 <div class=\"modal-footer\">\r\n"+
       " <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">关闭</button>\r\n"+
       " <button onclick=\"updateUserSubmit()\" type=\"button\" class=\"btn btn-primary\">编辑用户</button>\r\n"+
    	"  </div>\r\n"+
    	"  </form>\r\n"+
      "</div>\r\n";
		
		
	}

	@GetMapping("/admin/admin.html")
	public String admin(){
		return "admin/admin";
		
	}

	@GetMapping("/admin/roleManager.html")
	public String role(){
		return "admin/role";
		
		
	}
	@GetMapping("/admin/resourceManager.html")
	public String res(){
		return "admin/resource";
		
		
	}
	@GetMapping("/login.html")
	public String login(){
		return "login";
		
	}
	@GetMapping("/index.html")
	public String index(){
		
		return "index";
	}
	
	@PostMapping(value="/admin/UpadteUser.html")
	public String updateUser(User user){
		baseService.updateUser(user);
		return "redirect:/admin/userManager.html";
		
		
	}
	
}
