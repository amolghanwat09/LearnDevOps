#Create your login on https://bitbucket.org/
Its a free upto 5 users with unlimited public as well as private repositories.

#Click on Create repository
#Click on import repository
  Old repositories - https://github.com/tciaindiadevops/TestWebApp.git
  Give project name
  give repository name
  Access level - public (remove tick)

#Click on pipelines
  #Click on Build a Maven project
    #make necessory changes in bitbucket-pipelines.yml (image, script change)

      image: maven:3.6.1

      pipelines:
        default:
          - parallel:
            - step:
                name: Build and Deploy
                caches:
                  - maven
                script:
                  - mvn clean install
                  - scp webapp/target/webapp.war ec2-user@3.133.146.233:/local/apps/tomcat/webapps/

#Click on Repository Setting
  #click on setting under pipeline
    #enable pipeline
      #configure bitbucket-pipeline.yml

enable pipeline and select java(maven) project.

------------------------------------------------------------------------------------------------------
# To copy war file to ec2 instance from bitbucket.
1) Go to repository settings --> pipeline --> ssh-keys --> generate keys
2) copy public key and add it in authorized_keys file (644 permission) in ec2 instance of ec2-user to allow bitbucket server copy files on the ec2.
3) in known hosts section, enter public ip of remote server and click on fetch fingerprint and then click on add.