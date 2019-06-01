package com.ly666.ahead.controller.admin;import com.ly666.ahead.global.defaultValue.GlobalProperties;import com.ly666.ahead.security.model.auth.AdminToken;import lombok.extern.slf4j.Slf4j;import org.apache.shiro.SecurityUtils;import org.apache.shiro.authc.AuthenticationException;import org.apache.shiro.subject.Subject;import org.springframework.stereotype.Controller;import org.springframework.ui.Model;import org.springframework.web.bind.annotation.PostMapping;/** * @author ：luoyi * @date ：Created in 2019/5/31 22:50 * @desc : {} */@Slf4j@Controllerpublic class LoginController {	@PostMapping("/admin/login")	public String adminLogin(String account, String password, Model model){		System.out.println(account+"===>尝试登入");		log.info(account+"===>尝试登入");		Subject subject = SecurityUtils.getSubject();		AdminToken adminToken = new AdminToken(account, password, GlobalProperties.AUTH_ADMIN);		try {			subject.login(adminToken);			log.info("登入成功");		}catch (AuthenticationException e){			String msg="账户："+account+"===>认证失败";			log.warn(msg);			model.addAttribute("error",model);			return "redirect:/";		}		return "admin/index";	}}