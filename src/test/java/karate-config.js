function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  karate.configure('logPrettyResponse', true)
  karate.configure('logPrettyRequest', true)
  karate.configure('ssl', true);


  if (!env) {
    env = 'dev';
  }

  if (env == 'dev') {
    baseURL = 'http://dummy.restapiexample.com/'
  } else if (env == 'e2e') {
    // customize
  }

  var config = {
    env: env,
    baseURL: baseURL
  }

  return config;
}