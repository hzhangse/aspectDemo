package com.train;

public aspect HelloAspect {

	pointcut HelloWorldPointCut(int i) : execution(* com.train.HelloWorld.main(int)) && args(i);

	before(int x) : HelloWorldPointCut(x){
		x += 5;
		System.out.println("in the aspect   i = " + x);
	}
}
