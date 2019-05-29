package com.ly666.project.config;import com.ly666.project.global.defaultValue.GlobalProperties;import com.ly666.project.global.filter.JwtFilter;import com.ly666.project.mapper.realm.TokenRealm;import org.apache.shiro.authc.credential.CredentialsMatcher;import org.apache.shiro.authc.credential.HashedCredentialsMatcher;import org.apache.shiro.mgt.DefaultSessionStorageEvaluator;import org.apache.shiro.mgt.DefaultSubjectDAO;import org.apache.shiro.mgt.SecurityManager;import org.apache.shiro.spring.LifecycleBeanPostProcessor;import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;import org.apache.shiro.spring.web.ShiroFilterFactoryBean;import org.apache.shiro.web.mgt.DefaultWebSecurityManager;import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;import org.springframework.context.annotation.Bean;import org.springframework.context.annotation.Configuration;import org.springframework.context.annotation.DependsOn;import javax.servlet.Filter;import java.util.HashMap;import java.util.LinkedHashMap;import java.util.Map;/** * @author ：luoyi * @date ：Created in 2019/5/11 13:13 * @desc : {} */@Configurationpublic class ShiroConfig {	public ShiroConfig(){}	/*	 * 配置shiro过滤器	 * */	@Bean(name = "shirFilter")	public ShiroFilterFactoryBean shiroFilter(SecurityManager securityManager) {		ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();		//注入shiro安全管理器		shiroFilterFactoryBean.setSecurityManager(securityManager);		//设置过滤器		Map<String, Filter> filterMap = new HashMap<>();		filterMap.put("jwt", new JwtFilter());		shiroFilterFactoryBean.setFilters(filterMap);		//设置过滤拦截器链		Map<String, String> filterChainDefinitionMap = new LinkedHashMap<>();		// 配置需要拦截的链接		filterChainDefinitionMap.put("/blogServer/main/**","jwt");		shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);		return shiroFilterFactoryBean;	}	/*	 * 配置shiro安全管理器	 * */	@Bean	public SecurityManager securityManager() {		DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();		//设置realm		securityManager.setRealm(tokenRealm());        //关闭shiro自带的session		DefaultSubjectDAO subjectDAO  = new DefaultSubjectDAO();		DefaultSessionStorageEvaluator defaultSessionStorageEvaluator = new DefaultSessionStorageEvaluator();		defaultSessionStorageEvaluator.setSessionStorageEnabled(false);		subjectDAO.setSessionStorageEvaluator(defaultSessionStorageEvaluator);		securityManager.setSubjectDAO(subjectDAO);		return securityManager;	}	//配置自定义的realm/*	@Bean	public LoginRealm adminRealm() {		LoginRealm loginRealm = new LoginRealm();		//设置凭证匹配器		loginRealm.setCredentialsMatcher(credentialsMatcher());		//开启认证缓存		loginRealm.setAuthenticationCachingEnabled(true);		loginRealm.setAuthenticationCacheName("authenticationCache");		return loginRealm;	}*/	@Bean	public TokenRealm tokenRealm() {		return new TokenRealm();	}	/**	 *配置凭证匹配器	 * */	@Bean	public CredentialsMatcher credentialsMatcher() {		HashedCredentialsMatcher credentialsMatcher = new HashedCredentialsMatcher();		credentialsMatcher.setHashAlgorithmName(GlobalProperties.HASH_ALGORITHM_NAME);//散列算法		credentialsMatcher.setHashIterations(GlobalProperties.HASH_ITERATIONS);//散列次数		credentialsMatcher.setStoredCredentialsHexEncoded(true);//设置16进值编码		return credentialsMatcher;	}	/**	 * Shiro生命周期处理器 * @return	 */	@Bean	public LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {		return new LifecycleBeanPostProcessor();	}	/**	 * 开启Shiro的注解(如@RequiresRoles,@RequiresPermissions),需借助SpringAOP扫描使用Shiro注解的类,并在必要时进行安全逻辑验证 * 配置以下两个bean(DefaultAdvisorAutoProxyCreator(可选)和AuthorizationAttributeSourceAdvisor)即可实现此功能 * @return	 */	@Bean	@DependsOn({"lifecycleBeanPostProcessor"})	public DefaultAdvisorAutoProxyCreator advisorAutoProxyCreator() {		DefaultAdvisorAutoProxyCreator advisorAutoProxyCreator = new DefaultAdvisorAutoProxyCreator();		// 强制使用cglib		advisorAutoProxyCreator.setProxyTargetClass(true);		return advisorAutoProxyCreator;	}	@Bean	public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager) {		AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();		authorizationAttributeSourceAdvisor.setSecurityManager(securityManager);		return authorizationAttributeSourceAdvisor;	}}