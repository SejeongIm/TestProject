package exam.member.Ui;

import java.util.Scanner;

import exam.member.Dto.RegisterRequest;
import exam.member.Service.ChangePasswordService;
import exam.member.Service.MemberDeleteService;
import exam.member.Service.MemberListPrintService;
import exam.member.Service.MemberRegisterService;

public class MemberUI {
	
	//ui->service
	private MemberRegisterService memberRegisterService; //등록
	private MemberListPrintService memberListPrintService; //출력
	
	private ChangePasswordService changePasswordService; //비번변경
	
	private MemberDeleteService memberDeleteService;
	
	
	
	//주입공간:setter

	public void setChangePasswordService(ChangePasswordService changePasswordService) {
		this.changePasswordService = changePasswordService;
	}



	public void setMemberRegisterService(MemberRegisterService memberRegisterService) {
		this.memberRegisterService = memberRegisterService;
	}
	
	
	
	public void setMemberListPrintService(MemberListPrintService memberListPrintService) {
		this.memberListPrintService = memberListPrintService;
	}



	public void setMemberDeleteService(MemberDeleteService memberDeleteService) {
		this.memberDeleteService = memberDeleteService;
	}



	//메뉴 메소드(UI화면에 뜨는 
	public void showMenu() {
		Scanner scan = new Scanner(System.in);
		String command="";
		while(true) {
			System.out.println("명령어입력하세요:등록(new), 수정(change), 출력(list), 삭제(delete)");
			command=scan.nextLine();
			if(command.equalsIgnoreCase("exit")) {
				System.out.println("프로그램을 종료합니다.");
				break;
			}
			else if(command.toLowerCase().startsWith("new ")) {
				processNewCommand(command.split(" "));
				continue;
			}else if(command.equalsIgnoreCase("list")) {
				processListCommand();
				continue;
			}else if(command.toLowerCase().startsWith("change ")) {
				processChangeCommand(command.split(" "));
				continue;
			}else if(command.toLowerCase().startsWith("delete ")) {
				processDeleteCommand(command.split(" "));
				continue;
			}
		}
	}

	private void processDeleteCommand(String[] args) {
		// TODO Auto-generated method stub
		//delete email주소
		memberDeleteService.deleteMember(args[1]);
	}



	private void processChangeCommand(String[] args) {
		if(args.length != 4) {
			System.out.println("매개변수 갯수가 맞지 않아요");
			return;
		}
		
		changePasswordService.changePassword(args[1], args[2], args[3]);
		System.out.println("비번 변경했음");
		
		
	}



	private void processListCommand() {
		memberListPrintService.printAll();
		
	}



	private void processNewCommand(String[] args) {
		if(args.length != 5) {
			return;
		}
		RegisterRequest req = new RegisterRequest();
		req.setEmail(args[1]);
		req.setName(args[2]);
		req.setPassword(args[3]);
		req.setConfirmPassword(args[4]);
		if(!req.isPasswordEqual()) {
			System.out.println("암호와 암호확인이 일치하지 않습니다. \n");
			return;
		}
		memberRegisterService.regist(req);
		System.out.println("성공");
	}
	

}
