package com.pzy.controller;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import com.pzy.entity.Chat;
import com.pzy.service.UserService;
/***
 * 用户管理
 * @author panchaoyang
 *qq 263608237
 */
@Controller
public class ChatController {
	   
		@Autowired
	    private SimpMessagingTemplate template; 
		
		@Autowired
		private UserService userService;
		
	    @MessageMapping("/hello")
	    public void chat(Chat chat) throws Exception {
	    	chat.setChatDate(new Date());
	    	chat.setUser(userService.find(chat.getUserid()));
	    	chat.setFormuser(userService.find(chat.getFromuserid()));
	    	String dest = "/userChat/chat/"+chat.getUserid();  
	    	template.convertAndSend(dest, chat);
	    }
}
