package com.my0803.myapp.aop;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;


	@Aspect //aop ����� ���� ����̶� ��
	@Component // ������ ����ϰٴ� 
public class SampleAdvice {
	
	Logger logger = LoggerFactory.getLogger(SampleAdvice.class);
	
	@Before("execution(* com.my0803.myapp.service.BoardService*.*(..))")
	public void startLog() {
		logger.info("aop�� �α׸� ���ϴ�.�� �޼ҵ带 ���� �޼����� ��µ˴ϴ�");
		System.out.println("�̰��� sysout���� ���� ����Դϴ� ");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
