# Inden Bank Database Management System

## Project Overview

This project implements a comprehensive Database Management System (DBMS) for Inden Bank using MySQL. The system is designed to efficiently manage financial data, client information, transactions, and services, ensuring seamless operations and superior customer experiences.

## Key Components

### Entity-Relationship Diagram (ERD)
An ERD was created to visualize the relationships between key entities:
- Branches
- Products and Services
- Clients
- Accounts
- Transactions

### Database Schema
The schema includes five main tables:
- **Branches**: ID (PK), asset, name, city
- **Products and Services**: ID (PK), name, description, account_id (FK)
- **Clients**: ID (PK), name, city, dob, email, contact_no
- **Accounts**: ID (PK), balance, type, client_id (FK), branch_id (FK)
- **Transaction**: ID (PK), amount, date, src_id (FK), dst_id (FK)

### SQL Queries
Eight SQL queries were implemented to demonstrate various database operations:
1. WHERE clause
2. Data aggregation
3. Sorting data
4. Joins
5. Subquery
6. Aggregating data with GROUP BY
7. Finding clients with maximum total balance
8. Calculating average transaction amount for each source account

### Stored Procedure
A stored procedure named `control` was created to manage transactions, including:
- Checking account balance
- Updating balances for source and destination accounts
- Inserting transaction records
- Handling insufficient funds scenarios

## Evaluation and Considerations
- Efficiency and high-performance data retrieval
- Security and compliance with regulations (GDPR, PCI DSS)
- Scalability for growing data volume and user load
- ACID properties adherence
- CAP theorem application in the banking context

This project demonstrates a robust DBMS solution for Inden Bank, focusing on data integrity, transaction management, and system reliability in a financial context.

