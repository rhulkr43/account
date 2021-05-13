package com.dmjl.Services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.dmjl.Repository.AccountRepository;
import com.dmjl.entities.Account;

import net.bytebuddy.asm.Advice.OffsetMapping.Sort;



@Service
@Transactional
public class AccountService {
	
	@Autowired
	private AccountRepository accountRepository;
	
	
public void save(Account account) {
	accountRepository.save(account);
}

public List<Account> getAllList(){
	return (List<Account>) accountRepository.findAll();
}

public Account getById(@Param("id") Long id) {
	return accountRepository.findById(id).get();
}

public List<Account> getAccountbyStatus(@Param("account_status") String account_status){
	return accountRepository.findByAccount_status(account_status);
}
}
