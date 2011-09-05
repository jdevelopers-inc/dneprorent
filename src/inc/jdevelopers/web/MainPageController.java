package inc.jdevelopers.web;

import java.util.Date;
import java.util.Set;

import inc.jdevelopers.domain.*;
import inc.jdevelopers.domain.util.RentType;
import inc.jdevelopers.service.RentPromoServiceImpl;

import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.ui.Model;

import javax.jdo.PersistenceManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

@Controller
public class MainPageController {
	
	private RentPromoServiceImpl promosService;
	// JSR-303 validator
    private static Validator validator;
	
	@Autowired
	public MainPageController(RentPromoServiceImpl promosService){
		this.promosService = promosService;
		// Initialize JSR-303 bean validation
        ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
        this.validator = validatorFactory.getValidator();
	}
	
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String welcome(Model model){
	   model.addAttribute("count", promosService.countPromos());
	   return "index";
	}
	
	@RequestMapping(value="/input",method = RequestMethod.GET)
	public String input(Model model){
       model.addAttribute("count", promosService.countPromos());
       model.addAttribute("rentPromo", new RentPromo());
       model.addAttribute("rentTypes", RentType.getRentTypes());
	   return "input";
	}
	
	@RequestMapping(value="/input",method = RequestMethod.POST)
	public String save(@ModelAttribute("rentPromo") RentPromo rentPromo,
			           BindingResult result,
			           Model model		           ){
		model.addAttribute("count", promosService.countPromos());
		model.addAttribute("rentTypes", RentType.getRentTypes());

		// Get JSR-303 errors ( See domain Member class for annotations validation) 
        Set<ConstraintViolation<RentPromo>> violations = validator.validate(rentPromo);

        // Loop over possible errors
        for (ConstraintViolation<RentPromo> violation : violations) {
            String propertyPath = violation.getPropertyPath().toString();
            String message = violation.getMessage();
            // Add JSR-303 errors to BindingResult so Spring can display them in view via a FieldError
            //result.addError(new FieldError("rentPromo", propertyPath, "Invalid " + propertyPath + "(" + message + ")"));
            result.addError(new FieldError("rentPromo", propertyPath,  message));
        }

        // Use JSR-303 violations.size() == 0 or standard Spring result.hasErrors() which now has the JSR-303 errors
        if (result.hasErrors()) {
            // Errors exists
            //model.addAttribute("rentPromo", rentPromo);

            // NOTE THAT SessionStatus.setComplete(); is NEVER called 
            // This allow the memberList to grow since its stored in session
            // calling SessionStatus.setComplete() would destroy values in memberList
            // Return view memberList. Via resolver the view
            // will be mapped to /WEB-INF/jsp/memberList.jsp
            return "input";
        }
 		
		else{
			try {
				promosService.createPromo(rentPromo);
				model.addAttribute("count", promosService.countPromos());
	            model.addAttribute("msg_form","Данные введены успешно!");            
	        } catch(Exception ex) {
	        	model.addAttribute("msg_form","Внутренняя ошибка!");
	        	}   
		    return "input"; 
	    }
	}
	
	@RequestMapping(value="/view",method = RequestMethod.GET)
	public String view(Model model){
       model.addAttribute("promos", promosService.listAllPromos());
	   return "view";
	}

	@RequestMapping(value="/guestbook", method = RequestMethod.GET)
	public String guestbook(Model model){
	   return "guestbook";
	}
	
	@RequestMapping(value="/guestbook", method = RequestMethod.POST)
	public String saveOpinion(Model model, HttpServletRequest req, HttpServletResponse resp){
		String challenge = req.getParameter("recaptcha_challenge_field"),
	           response = req.getParameter("recaptcha_response_field");
		
		try
	    {
	      if ((challenge == null) || (response == null)) {
	        System.out.println("Фак!!! Каптча не рулит совсем!");//resp.sendRedirect("/?p=&err=1");
	      }

	      String remoteAddr = req.getRemoteAddr();
	      ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
	      reCaptcha.setPrivateKey("6LdSh8cSAAAAADfAz1B4lYIz6FAQmOESBpcfNS2h ");
	      ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(remoteAddr, challenge, response);

	      if (!reCaptchaResponse.isValid())
	      {
	    	  System.out.println("Фак!!! Каптча не валидная!");//resp.sendRedirect("/?p=&err=1");
	      }
	      else {
	    	  System.out.println("О чудо!");
	    	  //сохраняем отзыв
	      }
	    }
	    catch (Exception ex){
	      ex.printStackTrace();
	    }
	  
	   return "guestbook";
	}
}