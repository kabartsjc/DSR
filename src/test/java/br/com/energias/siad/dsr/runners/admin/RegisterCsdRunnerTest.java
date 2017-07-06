package br.com.energias.siad.dsr.runners.admin;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.*;
 
@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src/test/resources/features/admin", glue = "br.com.energias.siad.dsr.steps.admin", format = {
				"pretty", "html:target/cucumber" },  tags = "@registerCSD",
		  monochrome = true, 
		  dryRun = false)

public class RegisterCsdRunnerTest {

}
