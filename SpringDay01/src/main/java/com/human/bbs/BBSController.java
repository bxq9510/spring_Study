package com.human.bbs;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller	// �� ���ݺ��� �������� �����ϰڿ�... ������ ��Ʈ�ѷ� ����ϰڴ�.
public class BBSController {
	@RequestMapping(value = "/bbsinputForm", method = RequestMethod.GET) // 클라이언트 요청,
	public String bbsinputForm() {
		// 파라미터가 없어도 되는 것
		return "bbsinput";
	}
	@RequestMapping(value = "/bbsinput", method = RequestMethod.POST) // 클라이언트 요청,
	public String bbsinput(HttpServletRequest httpServletRequest) {
		// 파라미터가 있는 되는 것
		String title = httpServletRequest.getParameter("title");
		String name = httpServletRequest.getParameter("name");
		String memo = httpServletRequest.getParameter("memo");
		
		System.out.println(title+"/"+name+"/"+memo);
		
		return "bbslist";
	}
}
