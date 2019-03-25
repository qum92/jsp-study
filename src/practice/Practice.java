package practice;

public class Practice {
	
	public static void main(String[] args) {
		String str = "123456789";
		System.out.println(str.substring(str.length()-1));
		for(int i=1;i<=100;i++) {
			String numStr = i+"";
			numStr = numStr.substring(numStr.length()-1);
			int num = Integer.parseInt(numStr);
			if(num!=0 && num%3==0) {
				if(num!=0 && num%3==0) {
					System.out.println("짝"+",");
				}
			}
		}
		for(int i=1;i<=100;i++) {
			if(i%10==3||i%10==6||i%10==9) {
				System.out.print("짝"+",");
			}else {
				System.out.print(i+",");
			}
			System.out.println();
		}
	}

}
