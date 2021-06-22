package question1;

public class Main3 {
	
	public static void main(String[] args) {
		StackInterface stack = new Stack();
		
		for (int i = 0; i < 100; i++) {
			stack.push(i);
		}
		
		stack.pop();
	}
	
}
