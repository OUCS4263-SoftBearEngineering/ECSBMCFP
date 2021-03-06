## Current Deployment

### Hosting AjaxSwing HardwareSimulator on an HTTP-enabled GCP VM
1. Select the three dots next to your GCP VM, and select "View network details".
2. Create a new Firewall Rule titled "ajaxswing" with IP Range: 0.0.0.0/0, and tcp port: 8040
3. SSH to the VM. Select the gear icon on the top right and upload the ajaxswing_hwsim.zip
4. Issue the following commands:
```
  sudo apt-get install unzip openjdk-8-jre openjdk-8-jdk
  unzip -r ./ajaxswing_hwsim ./
```
  
5. Now we configure AjaxSwing settings to run the server.
```
  cd AjaxSwing4.6.4/bin
```
  
6. Edit the JAVA_HOME variable within setEnv.sh to read: "/usr/lib/jvm/java-8-openjdk-amd64"

7. Run the following commands to configure the AjaxSwing environment:
```
  cd setup
  ./setup.sh
  ./enableJdk18.sh
  cd ..
  ./setEnv.sh
```
  
8. Now we configure the Tomcat server to use our VM as host. From the AjaxSwing4.6.4 directory:
```
  cd tomcat/conf/
```

9. Within "server.xml", add parameter address="0.0.0.0" to the "Connector port=8040" tag.
10. In the "Engine" tag, set defaultHost="VM EXTERNAL IP"
11. In the "Host" tag, set name="VM EXTERNAL IP"

12. Navigate back to AjaxSwing4.6.4/bin and run:
```
  ./startServer.sh
```
  
13. The HardwareSimulator can now be accessed at "http://[VM EXTERNAL IP]:8040/ajaxswing/apps/hwsim
  
### AJAX Web App Deployment (old)

Our project is essentially the conversion of a desktop application into a web applet, that being, a program that is embedded into a web page. This means that our deployment process would consist of the same deployment processes that are used for a regular website. Luckily we learned some of this process last semester in our Software Engineering I class. The quick simplified version of that is as follows:

 * We use Google Cloud Platform to host a virtual machine. 

 * After the machine is hosted, we set up the machine to allow http traffic along with any other potential networking requirements needed for our application.

 * Once the machine is accessible with its address/link we then set up a basic webpage by using Python and Flask. Flask makes the creation and management of the site and its traffic easier and allows us to use an easy to understand language such as python for the overall website backend.(This is not the “backend” for our application just the site)

Since the website still uses HTML, CSS, Javascript, etc. for its regular web page functionality, we now proceed with the AJAX application deployment. Once the basic webpage has been set up and a user can connect to the sites address/link and see the basic web page and the AJAX application is in working version we can begin our deployment process. The basic deployment process is as follows:

 * Uploading the code for the AJAX application to the same GCP virtual machine that the web page is hosted on. 

 * Once the AJAX applications files are uploaded to the web server, code needs to be written that can integrate the website and the application together. Since the application is AJAX(Asynchronous JavaScript and XML) the program itself is already designed in such a way that allows for relatively easy integration into web pages. So the site just needs to be modified.
   ** Set up the site to allow for a “web applet”
   ** Connect the applet code and the sites code
   ** Verify its functioning
  
 * Once the web application is visually working on the site we would set up a basic file transfer system so that the site and user can exchange files as needed for application.
   ** Add more code to this site for file transfer, usually a basic form, flask can handle this part with relative ease.

The application would need to create and save files as well. Rather than saving the file to the websites server the user would save the file to their local machine and upload their file when they come back to the site for further use of the application.


## Original Deployment
Since this is a software to improve the exercise tools within textbook: "Elements of Computing Systems: Building a Modern Computer from First Principles," I will go over the previous deployment to compare our improvements.

1) Visit [Nand2Textis.org](https://www.nand2tetris.org/) and download the textbook for the exercise problems.

2) Visit the "Software Tab" and install the Nand2Textris software. Depending on the operating system, follow the setup guidelines provided on the website. For Windows, ensure the proper JRE is installed.

3) Once the sofware is extracted into your file system, navigate to the nand2tetris source location. You will now to able to launch the individual siumulators. Each simulator is a separate executable, so depending on the chapter exercise will affect which simulator is run.

4) Focusing on the Hardware simulator, once running, one must upload the test file. Then they must upload their own code snippit from a text file. This is important because all these siumlators do not provide text editing within the application. A major overhaul that we implemented. The worst part about the application involved having to open a text file or editor to make a small change, then having to re-upload the file into the simulator, then re-uploading the proper test file.
