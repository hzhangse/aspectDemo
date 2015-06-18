package com.train;

import org.junit.Test;

import com.train.HelloWorld;



public class TestHelloWorld {

	

	
	public void testMain(){
		HelloWorld.main(5);
	}
	
	
	public void testcallMain(){
		HelloWorld.callmain(5);
	}
	
	
	public void testexecuteMain(){
		HelloWorld.executemain(5);
	}
	
	@Test
	public void testwithinMain(){
		HelloWorld.withinMethod();
		HelloAspectDemo.withinMethod();
	}
}
