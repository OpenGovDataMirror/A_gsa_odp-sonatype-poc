Nexus Repository
==============================================================================


What Problem does Nexus Repository Solve
------------------------------------------------------------------------------

- For node.js ``package`` , npm is the package manager. https://www.npmjs.com/
- For Python ``library``, PYPI (Python package index) is the official community package hosting site https://pypi.org/search/?q=sdf, and the pip is the package manager https://pip.pypa.io/en/stable/installing/
- For Ruby ``gem``, Rubygems isi the official coomunity package hosting site https://index.rubygems.org/, Bundler is the Ruby package manager https://bundler.io/
- For ubuntu you have ``apt-get install``, for RedHat you have ``yum install``

Nexus Repository is a Private ``package/library/gem`` hosting server. It is your private https://www.npmjs.com/, https://pypi.org/ and https://index.rubygems.org/.

**Why we need Nexus Repository**:

1. You developed a re-usable library, but don't want to publish to open source community, but only want sharable inside your organization. Nexus will privately host your library.
2. You don't trust open source community. You want to clone those certified, internal approved library to your private Nexus repository, and only download from it.
3. You don't want the entire clone of every library from the open source community, Nexus repository can be a universal proxy server connecting the open source community.
4. When the open source server is down, you still want to be capable to pull library from your Private Server.


How It Works
------------------------------------------------------------------------------

It is basically a web server with blob storage. You just deploy it to your on-premise environment, and then use its API to upload/download library to/from it.

**Access Control Model**:

Nexus Repository use User / Role based model, which is very similar to AWS IAM User / Role Model.

Role defines what repository you can access to, what operation you can perform

User (Human user or Machine user for your build system) comes with a credential. And User usually are attached with some Roles.


Installation
------------------------------------------------------------------------------

Follow this guide: https://guides.sonatype.com/repo3/quick-start-guides/proxying-maven-and-npm/, steps are documented in a shell script ``install.sh``.


Documentation
------------------------------------------------------------------------------

Read this https://guides.sonatype.com/repo3/technical-guides/

- Role-Based Access Control: Organizational User Management
- A Primer for Storage Management in Nexus Repository 3 (performance tune)
- Dynamic Storage in Action: Scaling Storage for Nexus Repository 3 (scalability, blob store)
- Deployment Models for Availability and Reliability in Nexus Repository (availability and Disaster Recovery)
