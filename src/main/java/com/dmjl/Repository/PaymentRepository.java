package com.dmjl.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dmjl.entities.Payment;

@Repository
public interface PaymentRepository extends CrudRepository<Payment, Long>{

}
