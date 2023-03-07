package exam.member.Controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import exam.member.Ui.MemberUI;

public class MainWithSpring {

	public static void main(String[] args) {
		ApplicationContext ctx=new GenericXmlApplicationContext("member1.xml");
		
		MemberUI memberUI = ctx.getBean("memberUI", MemberUI.class);
		memberUI.showMenu();
		

	}

}
