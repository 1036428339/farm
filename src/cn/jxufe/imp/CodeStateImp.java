package cn.jxufe.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jxufe.dao.CodeStateDAO;
import cn.jxufe.entity.CodeState;
import cn.jxufe.service.CodeStateService;
@Service
public class CodeStateImp implements CodeStateService {
	@Autowired
	CodeStateDAO codeStateDAO;

	@Override
	public Iterable<CodeState> findAll() {
		return codeStateDAO.findAll();
	}

}
