package practice;

class Dog{
	String name;
}

public class Practice1 {
	Dog d;
	public Dog getDog() {
		if(d==null) {
			d = new Dog();
		}
		return d;
	}
	
	public static void main(String[] args) {
		Practice1 p = new Practice1();
		Dog d = p.getDog();
		d.name = "퍼피";
		d = p.getDog();
		System.out.println(d.name);
	}
}
