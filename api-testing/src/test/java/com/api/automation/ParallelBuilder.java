package com.api.automation;

import com.intuit.karate.Runner.Builder;
import org.junit.jupiter.api.Test;



public class ParallelBuilder {

    @Test
    public void executeKarateTest(){
        Builder bRunner = new Builder();
        bRunner.path("classpath:com/api/automation/getrequest");
        bRunner.parallel(5);

    }
}
