package com.train.flow;

public aspect CflowAspect {

	pointcut barPoint() :  execution(* bar(..));

	pointcut fooPoint() : execution(* foo(..));

	pointcut barCfow() : cflow(barPoint()) && !within(CflowAspect);

	pointcut fooInBar() : barCfow() && fooPoint(); // 获取bar流程内的foo方法调用

	before() : barCfow(){
		System.out.println("Enter:" + thisJoinPoint);
	}

	before() : fooInBar(){  
        System.out.println("Enter:" + thisJoinPoint);  
    }  
}
