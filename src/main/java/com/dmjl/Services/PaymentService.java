package com.dmjl.Services;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.dmjl.Repository.PaymentRepository;
import com.dmjl.entities.Payment;


@Service
@Transactional
public class PaymentService {
	
	@Autowired
	private PaymentRepository paymentRepository;
	
	public void addPayment(Payment payment) {
		paymentRepository.save(payment);
	}
	
	public List<Payment> getAllPayment(){
		List<Payment> list=(List<Payment>) paymentRepository.findAll();
		return list;
	}
	
	public Payment getPaymentById(@Param("id") long id) {
		return paymentRepository.findById(id).get();
	}
	
	public void deletebyid(@Param("id") long id) {
		paymentRepository.deleteById(id);
		
	}

}
