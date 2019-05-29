package com.ly666.project;

import com.ly666.project.util.SecurityUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ProjectApplicationTests {

	@Test
	public void contextLoads() {
		String newPassword = SecurityUtil.generaPassword("123", "杨经理" + "1254567883@qq.com");
		System.out.println(newPassword);
	}

}
