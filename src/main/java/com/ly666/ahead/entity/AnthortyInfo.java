package com.ly666.ahead.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.List;

/**
 * <p>
 * 
 * </p>
 *
 * @author luoyi
 * @since 2019-05-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class AnthortyInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "anthorty_id", type = IdType.AUTO)
    private Integer anthortyId;

    @TableField("anthorty_pid")
    private Integer anthortyPid;

    @TableField("anthorty_name")
    private String anthortyName;

    @TableField("anthorty_desc")
    private String anthortyDesc;

    @TableField("anthorty_url")
    private String anthortyUrl;

	/**
	 * 子菜单
	 */
	@TableField(exist = false)
    private List<AnthortyInfo> childMenus;

}
