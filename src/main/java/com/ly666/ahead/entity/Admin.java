package com.ly666.ahead.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 
 * </p>
 *
 * @author luoyi
 * @since 2019-06-01
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class Admin implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "admin_id", type = IdType.AUTO)
    private Integer adminId;

    @TableField("role_id")
    private Integer roleId;

    @TableField("admin_name")
    private String adminName;

    @TableField("admin_sex")
    private String adminSex;

    @TableField("admin_age")
    private Integer adminAge;

    @TableField("admin_native_place")
    private String adminNativePlace;

    @TableField("admin_idcard")
    private String adminIdcard;

    @TableField("admin_brithday")
    private LocalDateTime adminBrithday;

    @TableField("admin_office_phone")
    private String adminOfficePhone;

    @TableField("admin_mobile_phone")
    private String adminMobilePhone;

    @TableField("admin_eamil")
    private String adminEamil;

    @TableField("admin_addr")
    private String adminAddr;

    @TableField("admin_qq")
    private String adminQq;

    @TableField("admin_entry_time")
    private LocalDateTime adminEntryTime;

    @TableField("admin_eduction_level")
    private String adminEductionLevel;

    @TableField("admin_remark")
    private String adminRemark;

    /**
     * 1 有效 员工
            0 无效
            2 教师
            
     */
    @TableField("admin_state")
    private String adminState;

    /**
     * md5加密密码
     */
    @TableField("admin_password")
    private String adminPassword;


}
