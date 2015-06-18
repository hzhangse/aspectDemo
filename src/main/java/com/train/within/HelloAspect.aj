package com.train.within;

public aspect HelloAspect {

	pointcut HelloWorldPointCut() : execution(* withinMethod(..)) && !within(com.train.HelloAspectDemo);

	before() : HelloWorldPointCut(){
		System.out.println("Entering : " + thisJoinPoint.getSourceLocation());
	}
}
