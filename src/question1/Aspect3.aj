package question1;

public aspect Aspect3 {

pointcut callpop(Stack s): call(public * StackInterface.pop()) && target(s) && within(Main2);
	
	Object around(Stack s) : callpop(s){
		java.util.Stack<Object> JavaStack = new java.util.Stack<Object>();
		
		// Ajout d'un élément dans la pile Java car sinon pop() va retourner le même élément
		JavaStack.add(1);
		
		Object result = proceed(s);
		
		// On ajoute le résultat dans la pile Java
		JavaStack.add(result);
		
		// On regarde si c'est bien le même élément qui a été 'pop' (donc dans l'ordre inverse)
		if(result != JavaStack.pop()) {
			System.out.println("Erreur de la propriété 3: Pas dans l'ordre inverse");
		}
		
		return result;
	}
	
}
