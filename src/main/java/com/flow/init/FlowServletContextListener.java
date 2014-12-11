package com.flow.init;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class FlowServletContextListener implements ServletContextListener {

	public void contextInitialized(ServletContextEvent sce) {
		ServletContext context = sce.getServletContext();
		context.log("system init...");
		String version = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		context.setAttribute("SysVersion", version);
		
		//设置quartz是否跳过检查更新
		System.setProperty("org.terracotta.quartz.skipUpdateCheck", "true");
		
		//设置mybatis使用Log4J做为日志记录
		org.apache.ibatis.logging.LogFactory.useLog4J2Logging();
		
		
	}

	public void contextDestroyed(ServletContextEvent sce) {
		sce.getServletContext().log("system cloesd.");
	}

}
