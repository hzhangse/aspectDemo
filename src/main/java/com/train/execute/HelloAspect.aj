package com.train.execute;

public aspect HelloAspect {

	pointcut HelloWorldPointCut() : execution(* executemain(int));

	before() : HelloWorldPointCut(){
		System.out.println("Entering : " + thisJoinPoint.getSourceLocation());
	}
}
