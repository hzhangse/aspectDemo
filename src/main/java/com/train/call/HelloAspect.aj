package com.train.call;

public aspect HelloAspect {

	pointcut HelloWorldPointCut() : call(* callmain(int));

	before() : HelloWorldPointCut(){
		System.out.println("Entering : " + thisJoinPoint.getSourceLocation());
	}
}
