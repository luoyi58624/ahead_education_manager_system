package com.ly666.ahead.mapper;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ly666.ahead.entity.NoticeInfo;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author luoyi
 * @since 2019-05-31
 */
@Repository
public interface NoticeInfoMapper extends BaseMapper<NoticeInfo> {

	List<NoticeInfo> getNoticeInfos(Page<NoticeInfo> page);
}
