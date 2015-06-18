package com.train.advice;

public aspect HelloAspect {

	pointcut publicCall() : call(* AfterAdvice(..));

	pointcut beforeCall(int i) : call(* beforeAdvice(..))&& args(i);

	pointcut aroundCall(int i) : execution(* aroundAdvice(..))&& args(i);

	before(int x) : beforeCall(x){
		x += 5;
		System.out.println("in the aspect   i = " + x);
	}

	after() returning (Object o): publicCall() {
		System.out.println("Returned normally with " + o);
	}

	after() throwing (Exception e): publicCall() {
		System.out.println("Threw an exception: " + e);
	}

	after(): publicCall(){
		System.out.println("Returned or threw an Exception");
	}

	int around(int x) : aroundCall(x){
		System.out.println("Entering : " + thisJoinPoint.getSourceLocation());
		int newValue = proceed(x * 3);
		return newValue;
	}
}
