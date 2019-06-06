package com.ly666.ahead.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ly666.ahead.entity.RoleInfo;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luoyi
 * @since 2019-05-26
 */
@Repository
public interface RoleInfoMapper extends BaseMapper<RoleInfo> {
	@Select("select * from role_info ri,admin a where ri.role_id=a.role_id and a.account=#{account}")
	RoleInfo roleInfos(@Param("account") String account);
}
