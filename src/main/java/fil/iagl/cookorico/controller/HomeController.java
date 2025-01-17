package fil.iagl.cookorico.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import fil.iagl.cookorico.entity.Member;
import fil.iagl.cookorico.service.MemberService;
import fil.iagl.cookorico.wrapper.LoginWrapper;

@RestController
public class HomeController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public Member login(@RequestBody LoginWrapper wrapper){
		System.out.println(wrapper.getUsername());
		System.out.println(wrapper.getPassword());
		Member member = memberService.getMember(wrapper.getUsername(), wrapper.getPassword());
		System.out.println(member);
		return member;
	}
	
}
