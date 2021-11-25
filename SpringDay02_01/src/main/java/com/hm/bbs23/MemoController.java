package com.hm.bbs23;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.VO.MEMOVO;

@Controller
public class MemoController {
	private ArrayList<MEMOVO> memoList = new ArrayList<MEMOVO>();
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String inputForm(Locale locale, Model model) {
		return "memoForm";
	}
	
	@RequestMapping(value = "/memoForm", method = RequestMethod.GET)
	public String memoForm(Locale locale, Model model) {
		return "memoForm";
	}
	
	@RequestMapping(value = "/memoInput", method = RequestMethod.GET)
	public String memoInput(Locale locale, Model model) {
		return "bbs/memoInput";
	}
	
	@RequestMapping(value = "/memoSave", method = RequestMethod.POST)
	public String memoSave(HttpServletRequest request, Locale locale, Model model) {
		MEMOVO newMEMOVO = new MEMOVO();
		newMEMOVO.setTitle(request.getParameter("title"));
		newMEMOVO.setName(request.getParameter("name"));
		newMEMOVO.setMemo(request.getParameter("memo"));
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		newMEMOVO.setDate(dateFormat.format(date));
		newMEMOVO.setViews(0);
		memoList.add(newMEMOVO);
		System.out.println(memoList.size());
		return "redirect:/memoForm";
	}
	
	@RequestMapping(value = "/memoList", method = RequestMethod.GET)
	public String memoList(Locale locale, Model model) {
		model.addAttribute("memoList", memoList);
		return "bbs/memoList";
	}
	
	@RequestMapping(value = "/memoDetail", method = RequestMethod.GET)
	public String memoDetail(HttpServletRequest request, Model model, Locale locale) {
		int num = Integer.parseInt(request.getParameter("num"));
		viewUpdate(memoList.get(num).getViews());
		MEMOVO newMEMOVO = memoList.get(num);
		int viewNum = newMEMOVO.getViews();
		viewNum++;
		newMEMOVO.setViews(viewNum);
		model.addAttribute("oneDate", memoList.get(num));
//		String title = newMEMOVO.getTitle();
//		String name = newMEMOVO.getName();
//		String memo = newMEMOVO.getMemo();
//		String date = newMEMOVO.getDate();
		
//		int views = viewNum;
		return "bbs/memoDetail";
	}
	public int viewUpdate(int num) {
		int viewNum = memoList.get(num).getViews();
		viewNum += 1;
		memoList.get(num).setViews(viewNum);
		return viewNum;
	}
}
