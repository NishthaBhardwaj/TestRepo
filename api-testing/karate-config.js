function fn(){
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env)
    if(!env){
        env = 'local'
    }
    var config = {
        env: env,
        myVarName: 'someValue',
        _url: 'http://localhost:8080'

  }
    if (env == 'local'){
        config.myVarName = 'local'

    } else if (env == 'cloud'){
        _url = 'http://localhost:8080'
        config.myVarName =  'cloud'

    }
    return config;


}