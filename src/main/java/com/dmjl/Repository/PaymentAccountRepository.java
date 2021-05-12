package com.dmjl.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dmjl.entities.PaymentAccount;

@Repository
public interface PaymentAccountRepository extends CrudRepository<PaymentAccount, Long> {

}
