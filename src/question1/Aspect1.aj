package question1;

public aspect Aspect1 {
	
	pointcut callPopOrTop(Stack s): 
		(call(public * StackInterface.pop()) || 
		call (public * StackInterface.top())) && target(s) && within(Main1);
	
	
	before(Stack s) : callPopOrTop(s){
		if(s.isEmpty()) {
			System.out.println("\nErreur de la propriété 1 : Pile Vide");
		}
	}
	

}
