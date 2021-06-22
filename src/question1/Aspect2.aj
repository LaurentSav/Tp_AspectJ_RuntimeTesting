package question1;

public aspect Aspect2 {
	
	pointcut callpush(Stack s, Object t): call(public * StackInterface.push(Object)) && args(t) && target(s) && within(Main2);
	
	void around(Stack s, Object t) : callpush(s,t){
		int sizebefore = s.size();
		System.out.println("before " +sizebefore);
		proceed(s,t);
		if(sizebefore >= s.size()) {
			System.out.println("Erreur de la propriété 2: Taille de la pile incorrect");
		}
		System.out.println("after " + s.size());
	}
	
	pointcut callpop(Stack s): call(public * StackInterface.pop()) && target(s) && within(Main2);
	
	Object around(Stack s) : callpop(s){
		int sizebefore = s.size();
		System.out.println(sizebefore);
		Object result = proceed(s);
		if(sizebefore <= s.size()) {
			System.out.println("Erreur de la propriété 2: Taille de la pile incorrect");
		}
		System.out.println(s.size());
		return result;
	}
	
}
