package com.ly666.ahead.mapper;

import com.ly666.ahead.entity.AnthortyInfo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luoyi
 * @since 2019-05-26
 */
@Repository
public interface AnthortyInfoMapper extends BaseMapper<AnthortyInfo> {

	/**
	 * 获取所有的权限名字
	 */
	List<String> getAuth(@Param("account") String account);

	/**
	 * 根据用户的角色获取菜单信息
	 * @return  返回菜单集合
	 */
	List<AnthortyInfo> getMenus(@Param("account") String account);
}
