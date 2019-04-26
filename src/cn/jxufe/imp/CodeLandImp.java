package cn.jxufe.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.jxufe.dao.CodeLandDAO;
import cn.jxufe.entity.CodeLand;
import cn.jxufe.service.CodeLandService;
@Service
public class CodeLandImp implements CodeLandService {
	@Autowired
	CodeLandDAO codeLandDAO;

	@Override
	public Iterable<CodeLand> findAll() {
		return codeLandDAO.findAll();
	}

}
