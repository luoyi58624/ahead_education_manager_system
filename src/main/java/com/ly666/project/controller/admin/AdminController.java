package com.ly666.project.controller.admin;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ly666.project.entity.Admin;
import com.ly666.project.global.defaultValue.GlobalStatus;
import com.ly666.project.model.JsonResponse;
import com.ly666.project.service.IAdminService;
import com.ly666.project.util.SecurityUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author luoyi
 * @since 2019-05-08
 */
@Slf4j
@RestController
@RequestMapping("/admin")
public class AdminController {

	private final IAdminService adminService;

	public AdminController(final IAdminService adminService) {
		this.adminService = adminService;
	}

	@PostMapping("/login")
	public JsonResponse userLogin(String email, String password) {
		log.info(email + "请求登入");
		Admin admin = adminService.getOne(new QueryWrapper<Admin>().lambda().eq(Admin::getAdminEamil, email));
		if (StringUtils.isEmpty(admin)){
			log.info("===========账号错误===========");
			return new JsonResponse(GlobalStatus.HTTP_FAILED, GlobalStatus.USERNAME_ERR);
		}
		String newPassword = SecurityUtil.generaPassword(password, admin.getAdminName() + admin.getAdminEamil());
		if (admin.getAdminPassword().equals(newPassword)){
			return new JsonResponse(GlobalStatus.HTTP_OK, GlobalStatus.LOGIN_OK,SecurityUtil.sign(email, newPassword));
		}else {
			log.info("===========密码错误===========");
			return new JsonResponse(GlobalStatus.HTTP_FAILED, GlobalStatus.PASSWARD_ERR);
		}
	}

	@GetMapping("/checkAdminInfo")
	public Boolean exisitAdmin() {
		return adminService.count() != 0;
	}
}