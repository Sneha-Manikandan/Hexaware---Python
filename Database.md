# Database
Special software to store data
## Features of Database
- Cache frequently asked
- Querying becomes easier
- CRUD - easy
- Backups are inbuilt
- Undo easily (time-limited)
## Twitter Db on laptop?
- Eg if we have 30 lakh user logging in, it can't be handled using laptop because of storage capacity, or low performance.
## SQL 
Structured Query language
## NoSQL
Arranged in documents(key value pairs)
- Eg: mongoDB, cassandra, redis, dynamo DB

# Cloud
Renting pc - we can rent how many pc we want
## Cloud Providers
- AWS
- Azure
- Google Cloud Platform
- IBM cloud
- Salesforce
- Alibaba cloud
## Why not buy aws?
- Initial cost is high
- Maintenance
- Power
- Separater room
- Disaster Management
- Banks, government, Military buy cloud for security purpose

## what OS is used in cloud?
- LINUX
    - Free
    - Open source
    - Secure
    - Small footprint
    - Automation
    ## Flavors / Distros
        - Ubuntu
        - Linux mint
        - Fedora
        - Alphine we use in cloud (takes less space, less resource so less cost)
    
# Scaling
Expanding, leveling up, increase customers
## Types of Scaling
- **Vertical scaling**
It makes Pc more powerful and increase resouces
- **Horizontal scaling**
Buying another powerful Pc

## AWS has auto scaling
Rent pc's based on traffic and requirement
- Disadvantage 
    - Distributed denial of service(DDOS) - malicious traffic using bots
    - Redirect them to some dummy websites
    - Authentication by captcha

# Normalization
- Increase safety to our data
- Remove redundancy and anomaly
    - updation anomaly
    - deletion anomaly
    - insertion anomaly
## 1NF
- Don't use row order to convey info.
- Mixing datatypes within same column violates 1NF
- Every row needs a unique identifier (Primary Key).
- Repeating groups are not permitted
## 2NF
- Each non-key attribute must depend on the entire primary key
## 3NF 
- Every non-key attribute in a table should be depend on the key, the whole key, nothing but the key
## BCNF
- Every attribute in a table should be depend on the key, the whole key, nothing but the key

## Joins
- Inner join
- Outer join
    - Left join
    - Right join
    - Full join

## DDL - Data Definition Language
Modify the table 
## DML - Data Manipulation Language
Modify the data