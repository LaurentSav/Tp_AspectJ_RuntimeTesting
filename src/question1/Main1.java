package question1;

public class Main1 {

	public static void main(String[] args) {
		StackInterface stack = new Stack();
		
		/* La pile est vide, donc si on ex�cute les deux lignes suivantes, on obtiendra deux erreurs */
		stack.pop();
		stack.top();
		
		/* On ajoute un item dans la pile, si on ex�cute les trois prochaines lignes, nous n'aurons qu'une erreur
		 * car 
		 */
		stack.push(1);
		stack.pop();
		stack.top();
	}
}
