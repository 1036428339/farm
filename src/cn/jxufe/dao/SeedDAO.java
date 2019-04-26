package cn.jxufe.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import cn.jxufe.entity.Seed;

public interface SeedDAO extends JpaRepository<Seed, Long> {
	public Page<Seed> findByNameLike(String name, Pageable page);
}
