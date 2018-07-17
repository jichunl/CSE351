public class Test {
	public static void main(String[] args) {
		int temp = 0;
		int result = func4(temp);
		while (result < 987) {
			temp++;
			result = func4(temp);
		}
		System.out.println(temp);
	}

	public static int func4(int x) {
		if (x <= 1) {
			return 1;
		} else {
			return func4(x-1) + func4(x-2);
		}
	}
}
