/*package com.starry.springvc;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.starry.entity.*;

import org.omg.CORBA.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.apache.commons.io.FileUtils;


@Controller
public class HelloWorld {
	@RequestMapping("/helloworld")
	  public String hello(@RequestParam("name") String username,  
             @RequestParam("pwd") String password,Model model){
        System.out.println("hello world");
        
        if(username.equals("qin")&&password.equals("123")){
        	model.addAttribute("name",username);
            model.addAttribute("pwd", password);
            return "success";
        }else
        return "register";
    }
	
    @RequestMapping(value="/doUpload", method=RequestMethod.POST)  
    public String doUploadFile(@RequestParam("file") MultipartFile file,Model model){  
  
        if(!file.isEmpty()){  
            try {  
                  
                //这里将上传得到的文件保存至 d:\\temp\\file 目录  
                FileUtils.copyInputStreamToFile(file.getInputStream(), new File("d:\\temp\\file\\",   
                        System.currentTimeMillis()+ file.getOriginalFilename()));  
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
        }  
        model.addAttribute("status", "success");
        return "success";  //上传成功则跳转至此success.jsp页面  
    }  

    @RequestMapping(value="json1",produces="application/json")  
    public @ResponseBody List<User> getJson() {
    	List<User> list = new ArrayList<User>();
    	for(int i=0;i<3;i++){
    		User user = new User();
    		user.setName("a"+i);
    		user.setPwd("0"+i);
    		user.setId("1"+i);
    		list.add(user);
    	}
    	System.out.println(list);
		return list;

		
	}
	@RequestMapping("json2")
	public @ResponseBody User getJson2(){
		User user = new User();
		user.setName("aa");
		user.setPwd("123");
		return user;
	}
}
*/