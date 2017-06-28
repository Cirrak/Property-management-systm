package edu.mum.view;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.IntegrationTest;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.gargoylesoftware.htmlunit.WebClient;
import com.gargoylesoftware.htmlunit.html.HtmlElement;
import com.gargoylesoftware.htmlunit.html.HtmlForm;
import com.gargoylesoftware.htmlunit.html.HtmlOption;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import com.gargoylesoftware.htmlunit.html.HtmlSelect;
import com.gargoylesoftware.htmlunit.html.HtmlTextInput;
import com.property.mgt.Application;

import org.junit.Assert;

/*
 * Standalone HTMLUnit Version
 */

@RunWith(SpringJUnit4ClassRunner.class)
//Does Application config..sets environment to Tomcat
@SpringBootTest(classes = Application.class,webEnvironment=WebEnvironment.RANDOM_PORT)

public class ProductFormTest {

	// Value of port from @IntegrationTest("server.port:0")
    @Value("${local.server.port}")   
    int port;

//	 WebDriver driver;
	 WebClient webClient;
	 
    @Before
    public  void setUp() throws Exception{
//        driver = new FirefoxDriver();

        webClient = new WebClient();
    }

    /*
     * Successful Form submission will go to Details page
     */
 	@Test
	public void ValidateForm() throws Exception {
		 
 		HtmlPage page =  webClient.getPage("http://localhost:" + port + "/Product4aTestView/");
		System.out.println("Title of the page: "+ page.getTitleText());
		Assert.assertEquals("Add Product Form", page.getTitleText());
		
 		HtmlForm form = (HtmlForm) page.getElementById("newProduct");
		 HtmlTextInput textField = form.getInputByName("name");
		    textField.setValueAttribute("Race Car");
		
			 textField = form.getInputByName("description");
	 	     textField.setValueAttribute("Fast Automobile");

	 	    HtmlSelect select = (HtmlSelect) page.getElementById("category");
	 	    // Category Sports
	 	   HtmlOption option = select.getOptionByValue("2");
	 	   select.setSelectedAttribute(option, true);	 	     
	 	     
 			 textField = form.getInputByName("price");
	 	     textField.setValueAttribute("44.0");

  		HtmlElement submit = (HtmlElement) page.getElementById("submit");
  		page = submit.click();
		Assert.assertEquals("Save Product", page.getTitleText());
		System.out.println("Title of the page: "+ page.getTitleText());

		webClient.close();

 		 
		}
	
 
}
