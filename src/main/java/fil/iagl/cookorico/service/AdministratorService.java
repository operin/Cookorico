package fil.iagl.cookorico.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import fil.iagl.cookorico.dao.AdministratorDao;
import fil.iagl.cookorico.entity.Member;

public class AdministratorService {
	
	@Autowired
	private AdministratorDao adminDao;
	
	public List<Member> getAllMember(){
		return adminDao.getAllMembers();
	}
	
	public int deleteMember(String username){
		return adminDao.deleteMember(username);
	}
}