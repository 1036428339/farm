package cn.jxufe.service;

import org.springframework.data.domain.Pageable;

import cn.jxufe.bean.EasyUIData;
import cn.jxufe.bean.Message;
import cn.jxufe.entity.Grow;

public interface GrowService {
	public EasyUIData<?> findSome(int seedId, Pageable page);	

	public Message save(Grow grow);

	public Message delete(Grow grow);
}
