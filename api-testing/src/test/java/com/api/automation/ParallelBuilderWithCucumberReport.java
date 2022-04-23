package com.api.automation;

import com.intuit.karate.Results;
import com.intuit.karate.Runner.Builder;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;


public class ParallelBuilderWithCucumberReport {

    @Test
    public void executeKarateTest(){
        Builder bRunner = new Builder();
        bRunner.path("classpath:com/api/automation/getrequest");
        Results results = bRunner.parallel(5);
        System.out.println("Total Feature => " + results.getFeatureCount());
        System.out.println("Total Scenarios => " + results.getScenarioCount());
        System.out.println("Passed Scenarios => " + results.getPassCount());
        System.out.println("Failed Scenarios => " + results.getFailCount());

        Assertions.assertEquals(0,results.getFailCount(),"There are some Failed Scenarios ");

    }

    public void generateCucumberReport(String reportLocation){
        //File reportDir

    }
}
