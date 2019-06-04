package com.ly666.ahead.controller.admin;import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;import com.ly666.ahead.entity.Admin;import com.ly666.ahead.global.defaultValue.GlobalProperties;import com.ly666.ahead.security.model.auth.AdminToken;import com.ly666.ahead.security.util.SecurityUtil;import com.ly666.ahead.service.IAdminService;import com.ly666.ahead.util.MailService;import com.ly666.ahead.util.RedisUtil;import io.swagger.annotations.Api;import io.swagger.annotations.ApiImplicitParam;import io.swagger.annotations.ApiImplicitParams;import io.swagger.annotations.ApiOperation;import lombok.extern.slf4j.Slf4j;import org.apache.shiro.SecurityUtils;import org.apache.shiro.authc.AuthenticationException;import org.apache.shiro.subject.Subject;import org.springframework.stereotype.Controller;import org.springframework.ui.Model;import org.springframework.util.StringUtils;import org.springframework.web.bind.annotation.GetMapping;import org.springframework.web.bind.annotation.PathVariable;import org.springframework.web.bind.annotation.PostMapping;import org.springframework.web.bind.annotation.RequestMapping;import org.thymeleaf.TemplateEngine;import org.thymeleaf.context.Context;import springfox.documentation.annotations.ApiIgnore;import javax.servlet.http.HttpSession;/** * @author ：luoyi * @date ：Created in 2019/5/31 22:50 * @desc : {} */@Slf4j@Api(value = "AdminController")@Controller@RequestMapping("/admin")public class AdminController {	private IAdminService adminService;	private final TemplateEngine templateEngine;	private final MailService mailService;	private final RedisUtil redisUtil;	public AdminController(final IAdminService adminService, final TemplateEngine templateEngine, final MailService mailService, final RedisUtil redisUtil) {		this.adminService = adminService;		this.templateEngine = templateEngine;		this.mailService = mailService;		this.redisUtil = redisUtil;	}	@ApiIgnore	@PostMapping("/login")	public String adminLogin(String account, String password, Model model){		log.info(account+"===>尝试登入");		Subject subject = SecurityUtils.getSubject();		AdminToken adminToken = new AdminToken(account, password, GlobalProperties.AUTH_ADMIN);		try {			subject.login(adminToken);			log.info("登入成功");		}catch (AuthenticationException e){			String msg="账户："+account+"===>认证失败";			log.warn(msg);			model.addAttribute("error",model);			return "redirect:/";		}		return "admin/index";	}	@ApiOperation(value = "找回密码",notes = "找回管理员密码",httpMethod = "POST")	@ApiImplicitParams(@ApiImplicitParam(name = "account",value = "用户账号",dataType = "String",paramType = "query"))	@PostMapping("/findPwd")	public String adminFindPwd(String account, String username, Model model, HttpSession session){		Admin admin = adminService.getOne(new QueryWrapper<Admin>().lambda()				.eq(Admin::getAdminEamil, account).eq(Admin::getAdminName, username));		if (StringUtils.isEmpty(admin)){			model.addAttribute("adminFindError","没有找到用户信息");			return "admin/findPwd";		}		String key = SecurityUtil.generaPassword(account);		log.debug("已创建key:"+key);		//创建邮件html模板		Context context = new Context();		context.setVariable("key", key);		String emailTemplate = templateEngine.process("util/email/emailFindPwd", context);		try {			mailService.sendHtmlMail(account, "找回密码", emailTemplate);		} catch (Exception e) {			log.warn("发送邮件出现异常");		}		log.info("邮件发送成功");		session.setAttribute("emailMsg","邮件发送成功");		redisUtil.set(GlobalProperties.REDIS_PREFIX_INSTANT_USER+key,admin,600);		return "redirect:/";	}	@GetMapping("/email/resetPwd/{key}")	public String resetPwd(@PathVariable String key,Model model){		Admin admin = (Admin) redisUtil.get(GlobalProperties.REDIS_PREFIX_INSTANT_USER+key);		if (StringUtils.isEmpty(admin)) {			model.addAttribute("success", false);		}else{			model.addAttribute("success", true);			model.addAttribute("adminInfo",admin);		}		return "admin/resetPwd";	}	@PostMapping("resetPwd")	public String resetPassword(Admin admin,String newPassword,HttpSession session){		String s = SecurityUtil.generaPassword(newPassword, admin.getAdminEamil());		admin.setAdminPassword(s);		if(adminService.updateById(admin)){			session.setAttribute("success","重置密码成功");			return "redirect:/";		}else{			session.setAttribute("failed","未知原因，重置密码失败");			return "redirect:/";		}	}}