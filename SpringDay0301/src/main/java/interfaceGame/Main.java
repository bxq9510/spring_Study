package interfaceGame;

import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int jumsu = 0;
		int levelUP = 5;
		Scanner in = new Scanner(System.in);
		IF_missile nowM = new Basic();
		// 5점이면 미사일을 **로 바꾸고, 10점이면 $$$로 변경
		while(true) {
			in.nextLine(); // 슛
			if (jumsu==5 ) {
				nowM = new Star();
			}else if (jumsu==10) {
				nowM = new Gollbang();
			}
			nowM.shot();
			jumsu++; // 슛을 쏘면 그냥 점수 준다
			System.out.println("나의 점수: " + jumsu);
		}
	}

}
