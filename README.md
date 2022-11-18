# MY PROXY

## 1. Description:  <br/>
Proxy server acts as a third layer between user and internet to help improve the security and privacy for internet users. In the proxy server, It includes varying levels of functionality, security and privacy based on the demand of business users. Besides that proxy server acts as firewall and web filter and web filter to give shared network connection and cache data  to boost the network performance. At the enterprise level, a proxy filter is the middleman between device and network to accept and forward connection requests then return with the server response. It restricts users to access certain restricted websites to avoid network threat or cyber attack.
<br/>My Proxy is a web application simulating a single feature of Proxy Server which is proxy filtering. The application will act as a network portal in an enterprise environment to allow the IT Administrator manually managing access to the user group, configuring the network to place certain sites under restriction to improve productivity in corporate. In My Roxy, the database includes several tables to store user information, list of keywords, domains and internet protocol blocked by the policy. 

## 2. System Environment
<img src="Project-Images\System_Structure.png">

### Hardware of Software
Apache Tomcat
### RDBMS
MySQL Community Server 8.0.30
### Application Languages
Java, SQL, HTML, CSS, JavaScript

##  3. Functional Requirements
### For Administrators
- Add user
  - The admin has permission to add new users to the application. This permission will give the user an username and temporary password to access to the application. For example, the administrator can add a new employee to the group of users which he/she belongs to.
  The system will be able to add more users to an existing group or a new group
- Remove user 
  - The admin has permission to remove one or more users from the application if the users terminate their employment with the company.
  The system would allow the admin to remove the users. 
- Grant access 
  - Administrators can grant access to a group of employees or to a specific person.
  The system updates the websites that the group of users
- Remove Access 
  - Administrators can revoke the access of any group of users or a particular one if there is a security risk.
  The system allows the admin to remove access from different groups of users or a particular one.
- Approve/deny a request 
  - The user first needs to send the request to the admin. After the admin reviews the request, they will accept or deny the request.
  The system would allow the admin response to the request and update the access of the requester in their account.
- Login and logout 
  - The admin is able to login and logout the system when necessary.

### For users
- View user profile information
  - Users are able to view the list of websites that they have the permission to access.
  System is able to show the list of websites for a specific user when the user log-in to their account.
- Submit access request 
  - If users need to access any website that they have not granted access to yet, they can request access to admin with proper reason. 
- Test web access
  - Users are able to ping the websites that are listed in their access.
    System can return the list of websites that the user has the permission to access. 
- Login and logout 
  - Users can login to see their permission as well as request a access if necessary
    The system will check for the credential to allow the log-in.

## 4. ERD Diagram
<img src="Project-Images\Entity_relationship.png">