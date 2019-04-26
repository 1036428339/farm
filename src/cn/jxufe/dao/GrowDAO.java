package cn.jxufe.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import cn.jxufe.entity.Grow;

public interface GrowDAO extends JpaRepository<Grow, Long> {
	public List<Grow> findBySeedId(int seedId);
	public Page<Grow> findBySeedId(int seedId, Pageable page);
}
