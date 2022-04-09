package stepDefs;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)

@CucumberOptions(
        plugin = {"html:target/html-cucumber","json:target/cucumber.json"},
		
        features = "src/test/java/features",
        //tags = {"@Sanity"},  //to run one single Tag
        
        //tags = {"@Sanity,@Regression"}, //to run multiple tags using OR
        //tags = {"@Sanity or @Regression"}, //to run multiple tags using OR
        
      //  tags = {"@Regression","@Rapid"}, //to run multiple tags using And
        //tags = {"@Regression and @Rapid"}, //to run multiple tags using And
       // tags= {"@Sanity or (@Regression and @Rapid)"}, //to run multiple tags, here Sanity and Rapid scenario together
        //tags = {"@Sanity or @Regression and @Rapid"}, // another way to run multiple tags, here Sanity and Rapid scenario together
        //tags = {"not @Sanity"}, //To exclude Sanity scenarios to be run
        //tags = {"@Regression and ~@Ignore"} //To exclude Ignore tag test cases
        
        tags = {"@F_Login"},  //Feature level tag - To run entire login feature file
        
        
        glue = {"stepDefs"}
        
        )


public class TestRunner {

}
