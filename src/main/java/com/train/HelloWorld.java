package com.train;

public class HelloWorld {

	
	public static void main(int i){
		System.out.println("int the main method  i = " + i);
	}
	
	public static void callmain(int i){
		System.out.println("int the main method  i = " + i);
	}
	
	public static void executemain(int i){
		System.out.println("int the main method  i = " + i);
	}
	
	public static void withinMethod(){
		System.out.println("HelloWorld within method");  
	}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		//main(5);
		callmain(5);
	}

}
