Nexus IQ Server
==============================================================================


What Problem does Nexus IQ Server Solve
------------------------------------------------------------------------------

Nexus IQ Server is a policy engine powered by precise intelligence on open source components.

Basically sonatype is maintaining (or buying) a comprehensive security database for many kinds of popular open source library community like node.js, ruby, python. All kinds of Nexus products like Nexus Firewall and Lifecycle need to talk to IQ server to get the data for security analysis and evaluation.

It also allows you to customize your own policy (if security data is not available for a public library or your private library)


How It Works
------------------------------------------------------------------------------

It is basically a API Server with a Web server GUI on VM. It allows api call to it and store analysis reports. You need to deploy it to your on-premise environment.

You need a license file from Sonatype to activate the server.


Installation
------------------------------------------------------------------------------

I personally believes that CloudFormation is the easiest way to install an Nexus IQ Server.

The guide is https://help.sonatype.com/integrations/cloud-deployments/cloudformation---iq-server. You need to subscribe an AMI image from AWS Market.


Documentation
------------------------------------------------------------------------------

https://help.sonatype.com/iqserver/getting-started


Security Analysis with GUI
------------------------------------------------------------------------------

Guide: https://help.sonatype.com/iqserver/managing/policy-management/manual-application-evaluation


Security Analysis with CLI
------------------------------------------------------------------------------

Guide: https://help.sonatype.com/integrations/nexus-iq-cli


Security Analysis with IDE
------------------------------------------------------------------------------

Guide: https://marketplace.visualstudio.com/items?itemName=SonatypeCommunity.vscode-iq-plugin


CI Integration
------------------------------------------------------------------------------

https://help.sonatype.com/integrations/nexus-and-continuous-integration