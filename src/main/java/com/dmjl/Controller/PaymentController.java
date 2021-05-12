package com.dmjl.Controller;



import java.time.LocalDate;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dmjl.Services.AccountService;
import com.dmjl.Services.PaymentAccountServices;
import com.dmjl.Services.PaymentService;
import com.dmjl.entities.Payment;
import com.dmjl.entities.PaymentAccount;
import com.sun.el.stream.Stream;
import com.dmjl.entities.Account;



@Controller
@RequestMapping(value = "/payment")
public class PaymentController {
	
	@Autowired
	private PaymentAccountServices paymentAccountServices;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private AccountService accountService;
	@RequestMapping(value = "/list")
	public String home(Model model) {
		
	     model.addAttribute("list",accountService.getAllList());
		return "paymentlist";
	}
	@RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
	public String editaccount(@PathVariable Long id,Model model) {
		model.addAttribute("account5",accountService.getById(id));
		model.addAttribute("payment",paymentService.getAllPayment());
		model.addAttribute("account",paymentAccountServices.getAccount());
		return "edit/account";
	}
	
	@RequestMapping(value = "/add",method = RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("payment",paymentService.getAllPayment());
		model.addAttribute("account",paymentAccountServices.getAccount());
		return "add";
	}
	
	@RequestMapping(value = "/addsave",method = RequestMethod.POST)
	public String add(@ModelAttribute("account") Account account,Model model) {
		if(account.getId()==0) {
			model.addAttribute("commond" ,new Account());
			account.setDate(LocalDate.now());
			accountService.save(account);
		}
		else {
		Account account1=accountService.getById(account.getId());
		account1.setAccount_type(account.getAccount_type());
		account1.setAmount(account.getAmount());
		account1.setName(account.getName());
		account1.setPayment_type(account.getPayment_type());
		accountService.save(account1);
		}
		return "redirect:/payment/list";
	}
	
	
	
	@RequestMapping(value = "/account/list")
	public String accountlist(Model model) {
		model.addAttribute("list",paymentService.getAllPayment());
		return "paymentaccountlist";
	}
	@RequestMapping(value = "/account/add")
	public String accountadd(Model model) {
		model.addAttribute("command",new Payment());   
		return "paymentaccountadd";
	}
	@RequestMapping(value = "/account/save")
	public String accountsave(@ModelAttribute("payment") Payment payment,Model model) {
		if(payment.getId()==0) {
			paymentService.addPayment(payment);
		}else {
			Payment payment2=paymentService.getPaymentById(payment.getId());
			payment2.setName(payment.getName());
			payment2.setPayment_remarkString(payment.getPayment_remarkString());
			paymentService.addPayment(payment2);
		}
		
		return "redirect:/payment/account/list";
	}
	
	
	@RequestMapping(value = "/account/type",method = RequestMethod.GET)
	public String accounttype(Model model) {
		model.addAttribute("list", paymentAccountServices.getAccount());
		model.addAttribute("command", new PaymentAccount()); 
		return "paymentaccounttype";
	}
	@RequestMapping(value = "/account/type",method = RequestMethod.POST)
	public String accounttypesave(@ModelAttribute("paymentAccount") PaymentAccount paymentAccount,Model model,Map<String, PaymentAccount> map) {
		if(paymentAccount.getPayment_account_id()==0) {
			long data=paymentAccountServices.save(paymentAccount);
				
		}
		else {
			PaymentAccount paymentAccount1=paymentAccountServices.getPaymentById(paymentAccount.getPayment_account_id());
			paymentAccount1.setAccount_remarkString(paymentAccount.getAccount_remarkString());
			paymentAccount1.setAccount_type(paymentAccount.getAccount_type());
			paymentAccountServices.save(paymentAccount1);
		}
		
		return "redirect:/payment/account/type";
		
		
	}
	
	@RequestMapping(value="account/type/edit/{id}",method = RequestMethod.GET)
	public String editAccountType(@PathVariable Long id,Model model) {
		PaymentAccount paymentAccount=paymentAccountServices.getPaymentById(id);
		 model.addAttribute("list",paymentAccount);  
		return "edit/type";
	}
	@RequestMapping(value="account/type/delete/{id}",method = RequestMethod.GET)
	public String deleteAccountType(@PathVariable Long id,Model model) {
		paymentAccountServices.deletebyid(id);
		return "redirect:/payment/account/type";
	}
	@RequestMapping(value="account/type/view/{id}",method = RequestMethod.GET)
	public String viewAccountType(@PathVariable Long id,Model model) {
		paymentAccountServices.deletebyid(id);
		return "detail/type";
	}
	
	@RequestMapping(value="account/edit/{id}",method = RequestMethod.GET)
	public String paymentedit(@PathVariable Long id,Model model) {
		Payment paymentAccount=paymentService.getPaymentById(id);
		 model.addAttribute("list",paymentAccount);  
		return "edit/payment";
	}
	@RequestMapping(value="account/delete/{id}",method = RequestMethod.GET)
	public String paymentdelete(@PathVariable Long id,Model model) {
			paymentService.deletebyid(id);
		 return "redirect:/payment/account/list";
	}
	@RequestMapping(value="account/view/{id}",method = RequestMethod.GET)
	public String paymentview(@PathVariable Long id,Model model) {
			paymentService.deletebyid(id);
		 return "detail/payment";
	}
}
