# VS Code Server on IBM Cloud
VS Code server deployed using [IBM Cloud Schematics](https://cloud.ibm.com/docs/schematics?topic=schematics-about-schematics).

## Post install
 - Create an A record to point your fully qualified domain to the servers IP address. The IP can be found in the Schematics output.  
 - Log in to the instance via ssh and retrieve your Code Server password. The password is located in the file `/root/.config/code-server/config.yaml`
 - Open https://fqdn in a brwoser and log in. 

