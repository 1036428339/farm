package cn.jxufe.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

import cn.jxufe.bean.EntityID;

@Entity
@Table(name = "T_Seed")
public class Seed extends EntityID {
	private static final long serialVersionUID = 6710754697122731159L;
	private int seedId;
	private String name;
	private int grade;
	private int experience;
	private int fruitNum;
	private int fruitPrice;
	private int integral;
	private int harvestNum;
	private int type;
	private int matureTime;
	private int seedPrice;
	private int land;
	private String tip;

	public int getSeedId() {
		return seedId;
	}

	public void setSeedId(int seedId) {
		this.seedId = seedId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}

	public int getFruitNum() {
		return fruitNum;
	}

	public void setFruitNum(int fruitNum) {
		this.fruitNum = fruitNum;
	}

	public int getFruitPrice() {
		return fruitPrice;
	}

	public void setFruitPrice(int fruitPrice) {
		this.fruitPrice = fruitPrice;
	}

	public int getIntegral() {
		return integral;
	}

	public void setIntegral(int integral) {
		this.integral = integral;
	}

	public int getHarvestNum() {
		return harvestNum;
	}

	public void setHarvestNum(int harvestNum) {
		this.harvestNum = harvestNum;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getMatureTime() {
		return matureTime;
	}

	public void setMatureTime(int matureTime) {
		this.matureTime = matureTime;
	}

	public int getSeedPrice() {
		return seedPrice;
	}

	public void setSeedPrice(int seedPrice) {
		this.seedPrice = seedPrice;
	}

	public int getLand() {
		return land;
	}

	public void setLand(int land) {
		this.land = land;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
