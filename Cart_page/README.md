# servlet/jsp vscode template
F*CK ECLIPSE ME AND THE BOYS USE VSCODE. 

`This template already has jarkata and jstl depedencies.`

`This template use Tomcat 10.x. any version below will not work`

## REQUIREMENTS
+ [Extension Pack for Java for vscode](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack)
+ [Community Server Connectors for vscode](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-community-server-connector)
+ [Maven](https://maven.apache.org/) and [Tomcat10.x](https://tomcat.apache.org/) installed

## HOW TO USE
Chang the jdk version at *`maven.compiler.source`* and *`maven.compiler.targe`* in pom.xml

Change the `project name/war file name` at *`finalName`* in pom.xml

Modify/Write your source at `src\main`

Use Maven plugin at `Lifecycle\install` to build a `war` file in the `target folder`

Use the Community Server Connector plugin and add your built `war file` at the `target` folder to the `tomcat server`