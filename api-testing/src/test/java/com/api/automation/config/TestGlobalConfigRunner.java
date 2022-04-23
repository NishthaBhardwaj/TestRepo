package com.api.automation.config;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestGlobalConfigRunner {

    @Test
    public Karate runTest(){
        return Karate.run("getGlobalConfig").relativeTo(getClass());


    }
}
