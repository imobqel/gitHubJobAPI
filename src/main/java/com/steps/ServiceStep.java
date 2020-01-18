package com.steps;


import static org.hamcrest.CoreMatchers.equalTo;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.testng.Assert.assertEquals;

import java.util.Properties;
import org.hamcrest.Matchers;
import org.jbehave.core.annotations.Given;
import org.jbehave.core.annotations.Named;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;
import org.jbehave.core.steps.Steps;
import com.helper.PropertiesHelper;
import com.pages.Factory;


public class ServiceStep extends Steps {


    private Factory factory=new Factory();

    static PropertiesHelper propHelper=new PropertiesHelper();
    static Properties prop = propHelper.readPropertiesFile();
    
    private static String getPositionUrl=prop.getProperty("getJobsUrl");
    private static String getPositionById=prop.getProperty("getJobsUrlById");


    @Given("Initialize a request to get Jobs API")
    public void createRequest() {
    	factory.getServiceConfig().createRequest(getPositionUrl);
    }

    @Given("Create a request for get Positions by id service")
    public void createRequestById() {
    	factory.getServiceConfig().createRequest(getPositionById);
    }

    @When("set $var as variable with $value value")
    public void setParam(@Named("car") String parameters,@Named("value") String value) {
    	factory.getServiceConfig().addUrlParameters(parameters,value);
    }

    @When("Lunch the API")
    public void executeRequest() {
    	factory.getServiceConfig().executeService();
    }

    @Then("Check the Response code is equal to $ExpectedStatus")
    public void verifyResponseStatusCode(@Named("ExpectedStatus") int expectedStatus) {
    	assertEquals(factory.getServiceConfig().getStatusCode(), expectedStatus);
    }

    @Then("Verify from the content Response body is empty as $ExpectedEmpty")
    public void getContentResponseBodyIsEmpty(@Named("ExpectedEmpty") String expectedEmpty){
        assertThat(factory.getServiceConfig().getResponseBody(),equalTo(expectedEmpty));
    }

    @Then("Verify from the content Response body is not empty")
    public void getContentResponseBodyIsNotEmpty(){
        String actualValue=factory.getServiceConfig().getResponseBody();
        assertEquals(!actualValue.equalsIgnoreCase("[]"),true);

    }


    @Then("verify from the length content Response body is equal $number")
    public void verifyNumberResponseBody(@Named("number") int number){
    	 assertEquals(factory.getServiceConfig().getResponseBodyJson().length(),number);
    }


    @Then("verify from the $contentRespo content Response body is existing")
    public void verifyNumberResponseBody(@Named("contentRespo") String contentRespo){
        assertThat(factory.getServiceConfig().getResponseBodyJson().toString(),Matchers.containsString(contentRespo));
    }
}
