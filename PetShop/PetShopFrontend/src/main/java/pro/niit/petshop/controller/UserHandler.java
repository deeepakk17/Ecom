package pro.niit.petshop.controller;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;

import pro.niit.petshop.model.UserDetails;

public class UserHandler {

	/*public UserDetails initFlow() {
		return new UserDetails();
	}

	public String validateDetails(UserDetails userDetails, MessageContext messageContext) {
		String status = "success";
		if (userDetails.getUsername().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("username").defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getFirstname().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("firstname").defaultText("Firstname cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getLastname().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("lastname").defaultText("Lastname cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getMobilenumber().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("mobilenumber")
					.defaultText("Mobilenumber cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getPassword().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		if (userDetails.getConfirmpassword().isEmpty()) {
			messageContext.addMessage(new MessageBuilder().error().source("confirmpassword")
					.defaultText("Confirmpassword cannot be Empty").build());
			status = "failure";
		}
		return status;
	}
*/
}
