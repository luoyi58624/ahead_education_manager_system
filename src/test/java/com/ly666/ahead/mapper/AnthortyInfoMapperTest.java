package com.ly666.ahead.mapper;import com.ly666.ahead.entity.AnthortyInfo;import org.junit.Test;import org.junit.runner.RunWith;import org.springframework.beans.factory.annotation.Autowired;import org.springframework.boot.test.context.SpringBootTest;import org.springframework.test.context.junit4.SpringRunner;import java.util.List;/** * @author ：luoyi * @date ：Created in 2019/6/5 22:27 * @desc : {} */@SpringBootTest@RunWith(SpringRunner.class)public class AnthortyInfoMapperTest {	@Autowired	AnthortyInfoMapper anthortyInfoMapper;	@Test	public void test(){		List<AnthortyInfo> admin = anthortyInfoMapper.getMenus("luoyi58624@gmail.com");		for (AnthortyInfo anthortyInfo : admin) {			System.out.println(anthortyInfo);		}	}}