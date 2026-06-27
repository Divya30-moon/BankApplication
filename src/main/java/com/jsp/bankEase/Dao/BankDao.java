package com.jsp.bankEase.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import com.jsp.bankEase.entity.Bank;
import com.jsp.bankEase.util.JPAUtil;


public class BankDao {

private static EntityManager em= JPAUtil.getEm();
	
	public static void save(Bank b) {
		EntityManager em = JPAUtil.getEm();
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(b);
		et.commit();
	}
	
	public static List<Bank> getAll(){
		Query query = em.createQuery("FROM Bank");
		List<Bank> list = query.getResultList();
		System.out.println(list);
		return list;
	}
	
	public static void deleteById(int id) {
		EntityTransaction et = em.getTransaction();
		Bank bank = em.find(Bank.class, id);
		et.begin();
		em.remove(bank);
		et.commit();
	}
	
	public static Bank getById(int id) {
		return em.find(Bank.class,id);
	}
	
	public static void updateById(Bank bank) {
		EntityTransaction et = em.getTransaction();
		Bank bank2 = em.find(Bank.class, bank.getId());
		
		bank2.setName(bank.getName());
        bank2.setIfsc(bank.getIfsc());
		bank2.setLoc(bank.getLoc());
		
		et.begin();
		em.merge(bank2);
		et.commit();
		
	}
}
