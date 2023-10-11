#!/bin/bash
mkdir -p acme-jboss-eap
#wget https://stjgps.org/wp-content/uploads/2023/jboss-eap-7.4.0.zip
curl -O https://stjgps.org/wp-content/uploads/2023/jboss-eap-7.4.0.zip
mv *zip jboss-eap/
touch acme-jboss-eap/Dockerfile
echo "#!/bin/bash" | cat > acme-jboss-eap/createImage.sh && chmod +x acme-jboss-eap/createImage.sh ;

# Q2
Q2=acme-jboss-eap-container
mkdir -p $Q2
echo "#!/bin/bash" | cat > $Q2/stopContainer.sh && chmod +x $Q2/stopContainer.sh ;
echo "#!/bin/bash" | cat > $Q2/runContainer.sh && chmod +x $Q2/runContainer.sh ;
echo "#!/bin/bash" | cat > $Q2/getContainerLogs.sh && chmod +x $Q2/getContainerLogs.sh ;



podman pod create --name wordpresspod -p 8080:80
Q3=wordpresspod-mysql
mkdir -p $Q3
mkdir -p $HOME/wpdb_podman
echo "#!/bin/bash" | cat > $Q3/launchContainer.sh && chmod +x $Q3/stopContainer.sh ;

Q4=wordpresspod-wp
mkdir -p $Q4
echo "#!/bin/bash" | cat > $Q4/launchContainer.sh && chmod +x $Q4/stopContainer.sh ;

Q5=image-management
mkdir -p $Q5

Q6=template-question
mkdir -p $Q6
echo "#!/bin/bash" | cat > $Q6/createApplication.sh && chmod +x $Q6/createApplication.sh ;

Q7=creating-application
mkdir -p $Q7
echo "#!/bin/bash" | cat > $Q7/createApplication.sh && chmod +x $Q7/createApplication.sh ;

Q8=troubleshooting-openshift
mkdir -p $Q8
mkdir -p $Q8/tools
echo "#!/bin/bash" | cat > $Q8/tools/getStrings && echo "hello strings this is example output" | cat >> $Q8/tools/getStrings && chmod +x $Q8/tools/getStrings.sh ;
echo "#!/bin/bash" | cat > $Q8/tools/getStrings && echo "/work/tools/getStrings" | cat >> $Q8/tools/getStrings && chmod +x $Q8/tools/getStrings.sh ;


echo "#!/bin/bash" | cat > $Q8/getLogs.sh && chmod +x $Q8/getLogs.sh ;
echo "#!/bin/bash" | cat > $Q8/copyScript.sh && chmod +x $Q8/copyScript.sh ;
echo "#!/bin/bash" | cat > $Q8/printScript.sh && chmod +x $Q8/printScript.sh ;

