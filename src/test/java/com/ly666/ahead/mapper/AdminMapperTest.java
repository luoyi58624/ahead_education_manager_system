package com.ly666.ahead.mapper;import com.ly666.ahead.security.util.SecurityUtil;import org.junit.Test;import org.junit.runner.RunWith;import org.springframework.boot.test.context.SpringBootTest;import org.springframework.test.context.junit4.SpringRunner;/** * @author ：luoyi * @date ：Created in 2019/6/1 9:23 * @desc : {} */@SpringBootTest@RunWith(SpringRunner.class)public class AdminMapperTest {	@Test	public void test(){		String s = SecurityUtil.generaPassword("123456", "luoyi58624@gmail.com");		System.out.println(s);	}}