package sample03javabean;

public class Bean01 {
	//필드는 큰 이유 없으면 private로 만듦
	//생성자를 추가하지 않으면 기본생성자 자동추가됨
	
	private String value1;
	private int value2;
	
	//프로퍼티
	public String getValue1() { //value1 read
		return value1;
	}
	public void setValue1(String value1) { //value1 write
		this.value1 = value1;
	}
	public int getValue2() {
		return value2;
	}
	public void setValue2(int value2) {
		this.value2 = value2;
	}
	
	//기본생성자 있고, get,set메서드 있으면 java bean이라고 한다.	
}
