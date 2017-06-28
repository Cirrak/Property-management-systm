package edu.mum.view;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;
import org.openqa.selenium.support.ui.Select;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.IntegrationTest;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.property.mgt.Application;
 
/*
 * Selenium Version using HTMLUnitDriver
 */
@RunWith(SpringJUnit4ClassRunner.class)
//Does Application config..sets environment to Tomcat
@SpringBootTest(classes = Application.class,webEnvironment=WebEnvironment.RANDOM_PORT)

public class ProductFormSeleniumTest {

	// Value of port from webEnvironment=WebEnvironment.RANDOM_PORT
    @Value("${local.server.port}")   
    int port;

	 WebDriver driver;
 	 
    @Before
    public  void setUp() throws Exception{
     	driver = new HtmlUnitDriver();
     }

    /*
     * Successful Form submission will go to Details page
     */
 	@Test
	public void ValidateForm() throws Exception {

		driver.get("http://localhost:" + port + "/Product4aTestView/");
		System.out.println("Title of the page: "+ driver.getTitle());
		 		Assert.assertEquals("Add Product Form", driver.getTitle());
		
		 	Select categorySelect = new Select(driver.findElement(By.id("category")) );
		 	categorySelect.selectByValue("2");

	 		driver.findElement(By.id("name")).sendKeys("Race Car");;
	 		driver.findElement(By.name("description")).sendKeys("Fast Automobile");			 

			driver.findElement(By.name("price")).sendKeys("44");		 		 

			WebElement click = driver.findElement(By.id("submit"));
			click.submit();

			System.out.println("Title of the page: "+ driver.getTitle());
			Assert.assertEquals("Save Product", driver.getTitle());
  		 
		}
	
 
}
