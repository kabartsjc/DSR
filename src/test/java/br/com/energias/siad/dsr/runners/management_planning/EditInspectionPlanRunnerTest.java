package br.com.energias.siad.dsr.runners.management_planning;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.*;
 
@RunWith(Cucumber.class)
@CucumberOptions(
		features = "src/test/resources/features/management_planning", glue = "br.com.energias.siad.dsr.steps.management_planning", format = {
				"pretty", "html:target/cucumber" },   
		tags = "@editInspectionPlan",
		  monochrome = true, 
		  dryRun = false)

public class EditInspectionPlanRunnerTest {

}
