package com.train.move.aspect;




public aspect MoveAspect {

	 pointcut MoveAspect() :   call(* move(..));
	//pointcut MoveAspect() :   call(* move(..)) && target(com.train.Animal); 
	//pointcut MoveAspect() :   call(* move(..)) && this(com.train.Animal);  
	//pointcut MoveAspect() :   call(* move(..)) && this(com.train.TestMove);  
	//pointcut MoveAspect() :   execution(* move(..)) && this(com.train.Animal);  
	//pointcut MoveAspect() :   execution(* move(..)) && this(com.train.TestMove); 
	//pointcut MoveAspect() :   execution(* move(..)) && within(com.train.Animal);
	//pointcut MoveAspect() :   execution(* move(..)) && within(com.train.Snake);  
	//pointcut MoveAspect() :   call(* move(..)) && target(com.train.Animal)&& this(com.train.TestMove);  
	
	before() : MoveAspect(){
		System.out.println("Entering " + thisJoinPoint.getSourceLocation());
	} 
	
	
	 pointcut MoveAspect_dynamic(com.train.Animal a,com.train.TestMove t) :   call(* move(..)) && target(a)&& this(t);  
	
	 before(com.train.Animal a,com.train.TestMove t) : MoveAspect_dynamic(a,t){  
	        System.out.println("Entering " + thisJoinPoint.getSourceLocation() + "  target:" + a + "  this:" + t);  
	    }   
	
	
	
  
    
    
   
    
    
    
    
   
}
