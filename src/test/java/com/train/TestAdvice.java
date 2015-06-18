package com.train;

import org.junit.Test;

import com.train.HelloWorld;



public class TestAdvice {

	public int AfterAdvice(int i){
		System.out.println("after advice:"+i);
		return i;
	}

	public int beforeAdvice(int i){
		System.out.println("before advice:"+i);
		return i;
	}
	
	public int aroundAdvice(int i){
		System.out.println("around advice:"+i);
		return i;
	}
	
	
	public int AfterAdvice() throws Exception{
		throw new Exception ("throw Exception");
	}
	
	
	@Test
	public void aroundAdvice() throws Exception{
		aroundAdvice(4);
	}
	
	//@Test
	public void beforeAdvice() throws Exception{
		beforeAdvice(4);
	}
	
	//@Test
	public void TestAfterReturnValue(){
		AfterAdvice(1);
	}
	
	//@Test
	public void AfterAdviceThrowException() throws Exception{
		AfterAdvice();
	}
	
	
}
