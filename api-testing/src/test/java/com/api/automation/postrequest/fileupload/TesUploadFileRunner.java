package com.api.automation.postrequest.fileupload;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TesUploadFileRunner {

    @Test
    public Karate runTest(){
        return Karate.run("fileUpload").relativeTo(getClass());


    }
}
