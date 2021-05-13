package com.dmjl.Repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dmjl.entities.Account;

@Repository

public interface AccountRepository  extends CrudRepository<Account, Long>{

	@Query(value="select * from account  where account_status=:account_status",nativeQuery = true)
	public List<Account>  findByAccount_status(String account_status);
	
}
