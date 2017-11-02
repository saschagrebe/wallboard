class { 'java': }

tomcat::install { '/opt/tomcat':
  source_url => 'https://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
}
tomcat::war { 'hystrix-dashboard.war':
  catalina_base => '/opt/tomcat',
  war_source    => '/opt/tomcat/webapps/docs/appdev/sample/sample.war',
}