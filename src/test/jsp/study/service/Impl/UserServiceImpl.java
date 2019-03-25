package test.jsp.study.service.Impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import test.jsp.study.dao.UserDAO;
import test.jsp.study.dao.impl.UserDAOImpl;
import test.jsp.study.service.UserService;

public class UserServiceImpl implements UserService {
		
	UserDAO udao = new UserDAOImpl();

	public List<Map<String, String>> selectUserList(Map<String, String> user) {

		return udao.selectUserList(user);
	}


	public Map<String, String> selectUser(Map<String, String> user) {
		return udao.selectUser(user); 
	}


	public int insertUser(Map<String, String> user) {
		return udao.insertUser(user);
	}


	public int updateUser(Map<String, String> user) {
		return udao.updateUser(user);
	}


	public int deleteUser(Map<String, String> user) {
		return udao.deleteUser(user);
	}

	public Map<String, String> login(String uiId) {
		
		return udao.selectUserById(uiId);
	}
}
