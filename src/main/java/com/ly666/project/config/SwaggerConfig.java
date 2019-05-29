package com.ly666.project.config;import org.springframework.context.annotation.Bean;import org.springframework.context.annotation.Configuration;import springfox.documentation.builders.ApiInfoBuilder;import springfox.documentation.builders.PathSelectors;import springfox.documentation.builders.RequestHandlerSelectors;import springfox.documentation.service.ApiInfo;import springfox.documentation.spi.DocumentationType;import springfox.documentation.spring.web.plugins.Docket;import springfox.documentation.swagger2.annotations.EnableSwagger2;/** * @author ：lxwnb * @date ：Created in 2019/5/29 14:50 * @desc : {} */@Configuration@EnableSwagger2public class SwaggerConfig {	@Bean	public Docket createRestApi() {		return new Docket(DocumentationType.SWAGGER_2)				.apiInfo(apiInfo())				.select()				.apis(RequestHandlerSelectors.basePackage("com.ly666.project"))//指定扫描报包下面的注解				.paths(PathSelectors.any())				.build();	}	//创建api的基本信息	private ApiInfo apiInfo() {		return new ApiInfoBuilder()				.title("集成Sagger2构建RESTful APIs")				.description("先锋教务管理系统RESTful APIs")				.termsOfServiceUrl("https:www.baidu.com")				.version("1.0.0")				.build();	}}