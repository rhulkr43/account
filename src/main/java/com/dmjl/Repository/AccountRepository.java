package com.dmjl.Repository;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dmjl.entities.Account;

@Repository

public interface AccountRepository  extends CrudRepository<Account, Long>{

}
