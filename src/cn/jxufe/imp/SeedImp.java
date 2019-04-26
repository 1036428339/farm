package cn.jxufe.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import cn.jxufe.bean.EasyUIData;
import cn.jxufe.bean.Message;
import cn.jxufe.dao.GrowDAO;
import cn.jxufe.dao.SeedDAO;
import cn.jxufe.entity.Grow;
import cn.jxufe.entity.Seed;
import cn.jxufe.service.SeedService;

@Service
public class SeedImp implements SeedService {
	@Autowired
	SeedDAO seedDAO;
	@Autowired
	GrowDAO growDAO;

	@Override
	@Transactional
	public void changeSeedId(long id, int newSeedId) {
		Seed seed = seedDAO.findOne(id);
		if (seed == null || seed.getSeedId() == newSeedId)
			return;
		List<Grow> grows = growDAO.findBySeedId(seed.getSeedId());
		seed.setSeedId(newSeedId);
		seedDAO.save(seed);
		if (grows.size() != 0) {
			for (Grow grow : grows) {
				grow.setSeedId(newSeedId);
				growDAO.save(grow);
			}
		}

	}

	@Override
	public EasyUIData<?> findAll(Pageable pageable) {
		Page<Seed> page = seedDAO.findAll(pageable);
		EasyUIData<Seed> easyUIData = new EasyUIData<Seed>();
		easyUIData.setTotal(page.getTotalElements());
		easyUIData.setRows(page.getContent());
		return easyUIData;
	}

	@Override
	public EasyUIData<?> findSome(String name, Pageable pageable) {
		name = '%' + name + '%';
		Page<Seed> page = seedDAO.findByNameLike(name, pageable);
		EasyUIData<Seed> easyUIData = new EasyUIData<Seed>();
		easyUIData.setTotal(page.getTotalElements());
		easyUIData.setRows(page.getContent());
		return easyUIData;
	}

	@Override
	public Message save(Seed seed) {
		Message message = new Message();
		try {
			seedDAO.save(seed);
			message.setCode(0);
			message.setMsg("保存成功");
		} catch (Exception e) {
			message.setCode(-10);
			message.setMsg("保存失败");
		}
		return message;
	}

	@Override
	public Message delete(Seed seed) {
		Message message = new Message();
		try {
			seedDAO.delete(seed);
			message.setCode(0);
			message.setMsg("删除成功");
		} catch (Exception e) {
			message.setCode(-10);
			message.setMsg("删除失败");
		}
		return message;
	}

	@Override
	public Seed findOne(Seed seed) {
		return seedDAO.findOne(seed.getId());
	}

}
