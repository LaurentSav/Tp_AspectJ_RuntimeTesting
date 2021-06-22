package question1;

public class Main2 {
	public static void main(String[] args) {
		StackInterface stack = new Stack();
		
		/* La taille de la pile ne peut pas être inférieur à 0 */
		stack.pop();
		
		for (int i = 0; i < 1001; i++) {
			stack.push(i);
		}
		
	}
}
