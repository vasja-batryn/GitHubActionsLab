#!/bin/bash
set -xe


# Copy war file from S3 bucket to tomcat webapp folder
aws --no-sign-request s3 cp s3://githubactionslab-webappdeploymentbucket-1utua80nliqf9/SpringBootHelloWorldExampleApplication.war /usr/local/tomcat9/webapps/SpringBootHelloWorldExampleApplication.war --request-payer requester


# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /usr/local/tomcat9/webapps
