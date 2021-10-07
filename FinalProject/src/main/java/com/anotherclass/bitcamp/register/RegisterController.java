package com.anotherclass.bitcamp.register;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegisterController {
	
	SqlSession sqlSession;

	public SqlSession getSqlSession() {
		return sqlSession;
	}
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register/userRegister";
	}
	
	// 회원가입
	@RequestMapping(value="/another/registerJoin",method=RequestMethod.POST)
	public ModelAndView userJoin(RegisterVO vo) {
		ModelAndView mav = new ModelAndView();
		RegisterDAO_Imp dao = sqlSession.getMapper(RegisterDAO_Imp.class);
		dao.registerJoin(vo);
		mav.setViewName("redirect:/");
		return mav;
	}
}
