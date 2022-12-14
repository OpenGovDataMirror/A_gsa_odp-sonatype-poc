Sonatype App Scan Explore
==============================================================================

https://www.sonatype.com/appscan


What is SonaType App Scan
------------------------------------------------------------------------------

Scan all open source library used in your software, generate vulnerability report.


How it Works
------------------------------------------------------------------------------
It basically recursively iterate all dependencies and matching the existing vulnerability report based on multiple database like https://nvd.nist.gov/vuln. And eventually generate a report.

Generally it scans two things:

1. Security Issues
2. License Risk

Note:

- How to Understand the report: https://www.sonatype.com/hubfs/eBooks/AHC_Guide.pdf
- Example Report using example app ``djangoat - NVS test app``: https://ahc.sonatype.com/reports/Sonatype/7503cffa300e482081c1bfc06d0d60c4-b75d8/, username = sanhe.hu@gsa.gov, password = DFvDDWy7TA&b (random generated)


Supported OS
------------------------------------------------------------------------------
Windows, MacOS, Linux


Supported Languages
------------------------------------------------------------------------------
for Go, include a go.sum file
for JavaScript, include the node_modules folder
for Python, include a requirements.txt file
for Ruby, include the vendor/cache folder after running "bundle package"
for .NET, include any packages that are dependencies

It only support few popular open source programming language that having big and active open source community.


Pricing
------------------------------------------------------------------------------
Free, since it is based on vulnerability database of open source project.
