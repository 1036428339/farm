package cn.jxufe.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jxufe.dao.CodeTypeDAO;
import cn.jxufe.entity.CodeType;
import cn.jxufe.service.CodeTypeService;
@Service
public class CodeTypeImp implements CodeTypeService {
	@Autowired
	CodeTypeDAO codeTypeDAO;

	@Override
	public Iterable<CodeType> findAll() {
		return codeTypeDAO.findAll();
	}

}
