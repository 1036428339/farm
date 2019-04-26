package cn.jxufe.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import cn.jxufe.bean.EasyUIData;
import cn.jxufe.bean.Message;
import cn.jxufe.dao.GrowDAO;
import cn.jxufe.entity.Grow;
import cn.jxufe.service.GrowService;

@Service
public class GrowImp implements GrowService {
	@Autowired
	GrowDAO growDAO;

	@Override
	public EasyUIData<?> findSome(int seedId, Pageable pageable) {
		Page<Grow> page = growDAO.findBySeedId(seedId, pageable);
		EasyUIData<Grow> easyUIData = new EasyUIData<Grow>();
		easyUIData.setTotal(page.getTotalElements());
		easyUIData.setRows(page.getContent());
		return easyUIData;
	}

	@Override
	public Message save(Grow grow) {
		Message message = new Message();
		try {
			growDAO.save(grow);
			message.setCode(0);
			message.setMsg("保存成功");
		} catch (Exception e) {
			message.setCode(-10);
			message.setMsg("保存失败");
		}
		return message;
	}

	@Override
	public Message delete(Grow grow) {
		Message message = new Message();
		try {
			growDAO.delete(grow);
			message.setCode(0);
			message.setMsg("删除成功");
		} catch (Exception e) {
			message.setCode(-10);
			message.setMsg("删除失败");
		}
		return message;
	}

}
