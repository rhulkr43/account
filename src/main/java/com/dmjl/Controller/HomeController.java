package com.dmjl.Controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dmjl.Services.AccountService;
import com.dmjl.Services.PaymentAccountServices;
import com.dmjl.Services.PaymentService;
import com.dmjl.entities.Account;
import com.dmjl.entities.Payment;
import com.dmjl.entities.PaymentAccount;

@Controller
@RequestMapping(value = "/")
public class HomeController {
	@Autowired
	private PaymentAccountServices paymentAccountServices;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private AccountService accountService ;
	
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String home(Model model) {
		List<Payment> list=paymentService.getAllPayment();
		List<Account> accounts=accountService.getAllList();
		int insum=0;
		int outsum=0;
		if(accounts.size()>0) {
			
			
			for (Account account : accounts) {
				if(account.getAccount_status().equals("In")) {
					insum=insum+Integer.parseInt(account.getAmount());	
				}
				if(account.getAccount_status().equals("Out"))
				{
					outsum=outsum+Integer.parseInt(account.getAmount());
				}
		
			
			
		}
		}
		else {
			insum=0;
			outsum=0;
		}
		
		model.addAttribute("inamount",insum);
		model.addAttribute("outamount",outsum);
		
		model.addAttribute("payment",list);
		return "index";
	}
	
	@RequestMapping(value = "/view/{id}",method = RequestMethod.GET)
	public String view(@PathVariable("id") String id,Model model) {
		List<Account> list=accountService.getAccountbyStatus(id);
	   model.addAttribute("status",list);
		Set<String> uniqueAccounts=new HashSet();
		for (Account account : list) {
			uniqueAccounts.add(account.getAccount_type());
		}
		model.addAttribute("list",list);
		model.addAttribute("accounttype",uniqueAccounts);
		model.addAttribute("title",id+" Account Details");
		return "detail/view";
	}
	

}
