# SLC

**SLC** or otherwise known as **Server List Client** is a component in the **User Server List Revival**
project. This is used for specific game server registration to a specific repository/server/SLS installation.

## Building

**SLC** uses RBMX technology to easily integrate the code into ROBLOX Studio. The specific implementation that generates the file is called RMC, Roblox Model Compiler, another USLR open source project.
A RMC JAR is provided that has the specific modifications and version to match this project. You do not need to mess with it.
You can use the *build.bat* file to build it. The wrapper, *build.bat* runs batch that is only supported on Windows. You need to manually do it on Mac, but I'm not going to cover them today.

1. Open command prompt/PowerShell.
2. Navigate to the current directory of the project
3. Run *build.bat* to build the project. It should take a couple of seconds, or a 100 ms.
4. A file called, *built.rbxmx*, is the compiled version of the project and is ready to insert into studio.

## Tutorial

This tutorial is used for dummies to setup their SLC server using the latest commits and changes.

1. Follow the building section's tutorial to build a *built.rbxmx*, file.
2. Open Roblox Studio
3. Open the game that you want to add SLC to
4. Right click on workspace
5. Press insert file and direct it to the *built.rbxmx* file.
6. Change the authentication code value under the folder to the one in the SLS server. More details are on the project documentation README repository.
7. Change the url to the one of your SLS server. It must not have a trailing slash. Ex: **http://cryptic-plains-11632.herokuapp.com**

Done!