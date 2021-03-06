package com.dmjl.Repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.dmjl.entities.Payment;
import com.dmjl.entities.PaymentAccount;

@Repository
public interface PaymentRepository extends CrudRepository<Payment, Long>{

	
	@Query(value="select * from payment  where payment_name=:name",nativeQuery = true)
	 public Payment getPaymentByName(@Param("name") String name);   
	@Query(value="select * from payment  where payment_type=:payment_type",nativeQuery = true)
	 public Payment getPaymentAccountBypayment_type(@Param("payment_type") String payment_type); 
	
}
