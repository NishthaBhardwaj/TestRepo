package com.api.automation;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;


public class ParallelRunner {

    @Test
    public void executeKarateTests(){
        Results results = Runner.parallel(getClass(), 5);
        System.out.println("Total Feature => " + results.getFeatureCount());
        System.out.println("Total Scenarios => " + results.getScenarioCount());
        System.out.println("Passed Scenarios => " + results.getPassCount());
        System.out.println("Failed Scenarios => " + results.getFailCount());

        Assertions.assertEquals(0,results.getFailCount(),"There are some Failed Scenarios ");


    }
}
