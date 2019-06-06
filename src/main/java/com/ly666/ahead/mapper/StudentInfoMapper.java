package com.ly666.ahead.mapper;

import com.ly666.ahead.entity.RoleInfo;
import com.ly666.ahead.entity.StudentInfo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luoyi
 * @since 2019-06-02
 */
@Repository
public interface StudentInfoMapper extends BaseMapper<StudentInfo> {


}
