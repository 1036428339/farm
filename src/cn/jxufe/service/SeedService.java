package cn.jxufe.service;

import org.springframework.data.domain.Pageable;

import cn.jxufe.bean.EasyUIData;
import cn.jxufe.bean.Message;
import cn.jxufe.entity.Seed;

public interface SeedService {
	public void changeSeedId(long id, int newSeedId);

	public EasyUIData<?> findAll(Pageable pageable);

	public EasyUIData<?> findSome(String name, Pageable page);

	public Message save(Seed seed);

	public Message delete(Seed seed);
	
	public Seed findOne(Seed seed);
}
