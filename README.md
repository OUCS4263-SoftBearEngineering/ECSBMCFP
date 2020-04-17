# ECSBMCFP (The Elements of a Computing Systems: Building a Modern Computer From First Principles)


## Implementation
The Nand2Tetris software is a large library of Java code utilizing the java GUI elements to visually represent the software. The limitations of such a user interface does not allow all devices to view the software. Our goal was to improve the overall UI design, and allow more compatibility for the users by launching the code onto a server.

We went through many various sources to assist us in converting the Java codebase into a usable web-framework. We settled on the implementation of Ajax Swing to convert code onto a local host. A lot of configuration was required to properly set up the file paths to display and run the softtware correctly.

Once the localhost server was properly running, we began to transition the tomcat based localhost server onto the GCP network. With a GCP server, we now have the ability to run a server allowing all users to access the software. The version of jdk or operating system no longer limits compatibility.

Previous Implementation: Download the Simulators.jar files and run the execuables from the local file system. Work on the problems outside of the software, then upload the files for testing.

Current Implementation: Click the server URL link to the simulators, make real-time code changes, then run the file for testing. 


## Communications:
### Notion
Team based tool to assign individual work and allow each member to communicate their progress or request assistance.

### Microsoft Teams
Plan meeting times, share files, and dicuss asynchonously

### Zoom
Virtual meetings to dicuss progress on the project. Share screens and chat logs to record information.

## Passed: Ajax Swing
Attempt to convert a fully based Java codebase GUI application into a browser to be accessed by all devices. This would solve accessibility problems such as viewing the sotware on mutiple devices. The AJAX converts the gui into and HTML form, which attempts to mimic the gui based settings, but it also may need tweaks to get the layout conversion to correctly convert. We then would need to tweak the design to fit our improved UI design.

## Failed: GWT
Create Browser based applications from a java code base.
Complications: The conversion to GWT requires all widgets to be replaced with GWT compatable widgets. This is a very labor intensive process and not guranteed to work after all the tweaks and changes are made. Due to the nature of the short time schedule, we are going to pursue alternatives.

## Failed: JCLA
Microsoft supported program to convert a bulk of Java code into C#. It was run on Windows 2003 Operating System. This program was discontinued and not supported again by Microsoft in later versions or by the community; therefore, we couln't utilize it.
## Failed: IKVM
An implementation of Java Mono for Microsefot.NET frameworks. It is a Java virtual machine created in .NET. It was a framework to convert java to a .NET gui using the tools within the device. The software is no longer compatable and serviced; therefore, we cannot use it for our implementation.
## Failed: Sharpen
Open source software to convern Java code to C#. It required Java 7 and Maven, where our Java program is supported by Java 8. Thus we could not convert the data properly.
## Failed: Asp.net
A web framework to utilize the frontend languages seamless displaying of our program. It allows compatibility between HTML, CSS, JavaScript. It requires a C# code for it to work properly. So we must convert our java program to C#. This idea was fropped after the three above failed attempts to convert Java to C#.
## Failed: Vue.js
## Failed: React
## Failed: Angular

